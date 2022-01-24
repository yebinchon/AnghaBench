#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {struct myrb_ldev_info* hostdata; } ;
struct myrb_ldev_info {scalar_t__ state; scalar_t__ wb_enabled; } ;
struct myrb_hba {struct myrb_ldev_info* ldev_info_buf; int /*<<< orphan*/  ldev_info_addr; struct Scsi_Host* host; TYPE_1__* enquiry; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int ldev_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  MYRB_CMD_GET_LDEV_INFO ; 
 scalar_t__ MYRB_DEVICE_OFFLINE ; 
 unsigned short MYRB_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct myrb_ldev_info*,struct myrb_ldev_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 unsigned short FUNC2 (struct myrb_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct scsi_device* FUNC5 (struct Scsi_Host*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct scsi_device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned short FUNC9(struct myrb_hba *cb)
{
	unsigned short status;
	int ldev_num, ldev_cnt = cb->enquiry->ldev_count;
	struct Scsi_Host *shost = cb->host;

	status = FUNC2(cb, MYRB_CMD_GET_LDEV_INFO,
				 cb->ldev_info_addr);
	if (status != MYRB_STATUS_SUCCESS)
		return status;

	for (ldev_num = 0; ldev_num < ldev_cnt; ldev_num++) {
		struct myrb_ldev_info *old = NULL;
		struct myrb_ldev_info *new = cb->ldev_info_buf + ldev_num;
		struct scsi_device *sdev;

		sdev = FUNC5(shost, FUNC3(shost),
					  ldev_num, 0);
		if (!sdev) {
			if (new->state == MYRB_DEVICE_OFFLINE)
				continue;
			FUNC8(KERN_INFO, shost,
				     "Adding Logical Drive %d in state %s\n",
				     ldev_num, FUNC1(new->state));
			FUNC4(shost, FUNC3(shost),
					ldev_num, 0);
			continue;
		}
		old = sdev->hostdata;
		if (new->state != old->state)
			FUNC8(KERN_INFO, shost,
				     "Logical Drive %d is now %s\n",
				     ldev_num, FUNC1(new->state));
		if (new->wb_enabled != old->wb_enabled)
			FUNC7(KERN_INFO, sdev,
				    "Logical Drive is now WRITE %s\n",
				    (new->wb_enabled ? "BACK" : "THRU"));
		FUNC0(old, new, sizeof(*new));
		FUNC6(sdev);
	}
	return status;
}