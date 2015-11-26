import UIKit

class ViewController: UITableViewController {

    @IBOutlet weak var startDatePickerCell: UITableViewCell!
    @IBOutlet weak var endDatePickerCell: UITableViewCell!

    private var openStartDatePicker = false
    private var openEndDatePicker = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: - UITableViewDelegate Overrides

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        switch (indexPath.section, indexPath.row) {
        case (1, 1):
            return openStartDatePicker ? 240 : 0
        case (1, 3):
            return openEndDatePicker ? 240 : 0
        default:
            return 44
        }
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch (indexPath.section, indexPath.row) {
        case (1, 0):
            tableView.beginUpdates()
            openStartDatePicker = !openStartDatePicker
            tableView.endUpdates()
        case (1, 2):
            tableView.beginUpdates()
            openEndDatePicker = !openEndDatePicker
            tableView.endUpdates()
        default:
            break
        }
    }

}

