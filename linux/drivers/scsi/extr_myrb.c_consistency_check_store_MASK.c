#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int rbld_rate; int /*<<< orphan*/  addr; void* id; int /*<<< orphan*/  opcode; } ;
struct TYPE_3__ {unsigned short ldev_num; int auto_restore; void* id; int /*<<< orphan*/  opcode; } ;
union myrb_cmd_mbox {TYPE_2__ type3R; TYPE_1__ type3C; } ;
struct scsi_device {scalar_t__ channel; unsigned short id; int /*<<< orphan*/  host; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct myrb_rbld_progress {int dummy; } ;
struct myrb_cmdblk {union myrb_cmd_mbox mbox; } ;
struct myrb_hba {int /*<<< orphan*/  dcmd_mutex; struct myrb_cmdblk dcmd_blk; struct pci_dev* pdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EALREADY ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  MYRB_CMD_CHECK_CONSISTENCY_ASYNC ; 
 int /*<<< orphan*/  MYRB_CMD_REBUILD_CONTROL ; 
 void* MYRB_DCMD_TAG ; 
#define  MYRB_STATUS_ATTEMPT_TO_RBLD_ONLINE_DRIVE 131 
#define  MYRB_STATUS_INVALID_ADDRESS 130 
#define  MYRB_STATUS_RBLD_NEW_DISK_FAILED 129 
#define  MYRB_STATUS_RBLD_OR_CHECK_INPROGRESS 128 
 unsigned short MYRB_STATUS_SUCCESS ; 
 unsigned char* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC5 (struct myrb_hba*,struct myrb_cmdblk*) ; 
 unsigned short FUNC6 (struct myrb_hba*,struct myrb_rbld_progress*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct myrb_cmdblk*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct scsi_device*,char*,...) ; 
 struct myrb_hba* FUNC10 (int /*<<< orphan*/ ) ; 
 struct scsi_device* FUNC11 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC12(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct scsi_device *sdev = FUNC11(dev);
	struct myrb_hba *cb = FUNC10(sdev->host);
	struct myrb_rbld_progress rbld_buf;
	struct myrb_cmdblk *cmd_blk;
	union myrb_cmd_mbox *mbox;
	unsigned short ldev_num = 0xFFFF;
	unsigned short status;
	int rc, start;
	const char *msg;

	rc = FUNC2(buf, 0, &start);
	if (rc)
		return rc;

	if (sdev->channel < FUNC7(sdev->host))
		return -ENXIO;

	status = FUNC6(cb, &rbld_buf);
	if (start) {
		if (status == MYRB_STATUS_SUCCESS) {
			FUNC9(KERN_INFO, sdev,
				    "Check Consistency Not Initiated; already in progress\n");
			return -EALREADY;
		}
		FUNC3(&cb->dcmd_mutex);
		cmd_blk = &cb->dcmd_blk;
		FUNC8(cmd_blk);
		mbox = &cmd_blk->mbox;
		mbox->type3C.opcode = MYRB_CMD_CHECK_CONSISTENCY_ASYNC;
		mbox->type3C.id = MYRB_DCMD_TAG;
		mbox->type3C.ldev_num = sdev->id;
		mbox->type3C.auto_restore = true;

		status = FUNC5(cb, cmd_blk);
		FUNC4(&cb->dcmd_mutex);
	} else {
		struct pci_dev *pdev = cb->pdev;
		unsigned char *rate;
		dma_addr_t rate_addr;

		if (ldev_num != sdev->id) {
			FUNC9(KERN_INFO, sdev,
				    "Check Consistency Not Cancelled; not in progress\n");
			return 0;
		}
		rate = FUNC0(&pdev->dev, sizeof(char),
					  &rate_addr, GFP_KERNEL);
		if (rate == NULL) {
			FUNC9(KERN_INFO, sdev,
				    "Cancellation of Check Consistency Failed - Out of Memory\n");
			return -ENOMEM;
		}
		FUNC3(&cb->dcmd_mutex);
		cmd_blk = &cb->dcmd_blk;
		FUNC8(cmd_blk);
		mbox = &cmd_blk->mbox;
		mbox->type3R.opcode = MYRB_CMD_REBUILD_CONTROL;
		mbox->type3R.id = MYRB_DCMD_TAG;
		mbox->type3R.rbld_rate = 0xFF;
		mbox->type3R.addr = rate_addr;
		status = FUNC5(cb, cmd_blk);
		FUNC1(&pdev->dev, sizeof(char), rate, rate_addr);
		FUNC4(&cb->dcmd_mutex);
	}
	if (status == MYRB_STATUS_SUCCESS) {
		FUNC9(KERN_INFO, sdev, "Check Consistency %s\n",
			    start ? "Initiated" : "Cancelled");
		return count;
	}
	if (!start) {
		FUNC9(KERN_INFO, sdev,
			    "Check Consistency Not Cancelled, status 0x%x\n",
			    status);
		return -EIO;
	}

	switch (status) {
	case MYRB_STATUS_ATTEMPT_TO_RBLD_ONLINE_DRIVE:
		msg = "Dependent Physical Device is DEAD";
		break;
	case MYRB_STATUS_RBLD_NEW_DISK_FAILED:
		msg = "New Disk Failed During Rebuild";
		break;
	case MYRB_STATUS_INVALID_ADDRESS:
		msg = "Invalid or Nonredundant Logical Drive";
		break;
	case MYRB_STATUS_RBLD_OR_CHECK_INPROGRESS:
		msg = "Already in Progress";
		break;
	default:
		msg = NULL;
		break;
	}
	if (msg)
		FUNC9(KERN_INFO, sdev,
			    "Check Consistency Failed - %s\n", msg);
	else
		FUNC9(KERN_INFO, sdev,
			    "Check Consistency Failed, status 0x%x\n", status);

	return -EIO;
}