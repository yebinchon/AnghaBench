#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct scsi_device {scalar_t__ channel; int /*<<< orphan*/  host; struct myrb_ldev_info* hostdata; } ;
struct myrb_ldev_info {int state; } ;
struct myrb_hba {int dummy; } ;
struct device {int dummy; } ;
typedef  enum raid_state { ____Placeholder_raid_state } raid_state ;

/* Variables and functions */
#define  MYRB_DEVICE_CRITICAL 130 
#define  MYRB_DEVICE_ONLINE 129 
#define  MYRB_DEVICE_WO 128 
 unsigned short MYRB_STATUS_SUCCESS ; 
 int RAID_STATE_ACTIVE ; 
 int RAID_STATE_DEGRADED ; 
 int RAID_STATE_OFFLINE ; 
 int RAID_STATE_RESYNCING ; 
 int RAID_STATE_UNKNOWN ; 
 unsigned short FUNC0 (struct myrb_hba*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  myrb_raid_template ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct device*,int) ; 
 struct myrb_hba* FUNC3 (int /*<<< orphan*/ ) ; 
 struct scsi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct scsi_device *sdev = FUNC4(dev);
	struct myrb_hba *cb = FUNC3(sdev->host);
	struct myrb_ldev_info *ldev_info = sdev->hostdata;
	enum raid_state state = RAID_STATE_UNKNOWN;
	unsigned short status;

	if (sdev->channel < FUNC1(sdev->host) || !ldev_info)
		state = RAID_STATE_UNKNOWN;
	else {
		status = FUNC0(cb, NULL);
		if (status == MYRB_STATUS_SUCCESS)
			state = RAID_STATE_RESYNCING;
		else {
			switch (ldev_info->state) {
			case MYRB_DEVICE_ONLINE:
				state = RAID_STATE_ACTIVE;
				break;
			case MYRB_DEVICE_WO:
			case MYRB_DEVICE_CRITICAL:
				state = RAID_STATE_DEGRADED;
				break;
			default:
				state = RAID_STATE_OFFLINE;
			}
		}
	}
	FUNC2(myrb_raid_template, dev, state);
}