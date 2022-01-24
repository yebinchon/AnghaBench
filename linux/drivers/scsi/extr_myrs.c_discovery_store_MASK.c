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
struct TYPE_3__ {int dma_ctrl_to_host; int no_autosense; } ;
struct TYPE_4__ {int /*<<< orphan*/  ioctl_opcode; TYPE_1__ control; int /*<<< orphan*/  id; int /*<<< orphan*/  opcode; } ;
union myrs_cmd_mbox {TYPE_2__ common; } ;
struct myrs_cmdblk {unsigned char status; union myrs_cmd_mbox mbox; } ;
struct myrs_hba {int needs_update; int /*<<< orphan*/  monitor_work; int /*<<< orphan*/  work_q; scalar_t__ next_evseq; int /*<<< orphan*/  dcmd_mutex; struct myrs_cmdblk dcmd_blk; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  MYRS_CMD_OP_IOCTL ; 
 int /*<<< orphan*/  MYRS_DCMD_TAG ; 
 int /*<<< orphan*/  MYRS_IOCTL_START_DISCOVERY ; 
 unsigned char MYRS_STATUS_SUCCESS ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct myrs_hba*,struct myrs_cmdblk*) ; 
 int /*<<< orphan*/  FUNC5 (struct myrs_cmdblk*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,...) ; 
 struct myrs_hba* FUNC8 (struct Scsi_Host*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct myrs_hba *cs = FUNC8(shost);
	struct myrs_cmdblk *cmd_blk;
	union myrs_cmd_mbox *mbox;
	unsigned char status;

	FUNC2(&cs->dcmd_mutex);
	cmd_blk = &cs->dcmd_blk;
	FUNC5(cmd_blk);
	mbox = &cmd_blk->mbox;
	mbox->common.opcode = MYRS_CMD_OP_IOCTL;
	mbox->common.id = MYRS_DCMD_TAG;
	mbox->common.control.dma_ctrl_to_host = true;
	mbox->common.control.no_autosense = true;
	mbox->common.ioctl_opcode = MYRS_IOCTL_START_DISCOVERY;
	FUNC4(cs, cmd_blk);
	status = cmd_blk->status;
	FUNC3(&cs->dcmd_mutex);
	if (status != MYRS_STATUS_SUCCESS) {
		FUNC7(KERN_INFO, shost,
			     "Discovery Not Initiated, status %02X\n",
			     status);
		return -EINVAL;
	}
	FUNC7(KERN_INFO, shost, "Discovery Initiated\n");
	cs->next_evseq = 0;
	cs->needs_update = true;
	FUNC6(cs->work_q, &cs->monitor_work, 1);
	FUNC1(&cs->monitor_work);
	FUNC7(KERN_INFO, shost, "Discovery Completed\n");

	return count;
}