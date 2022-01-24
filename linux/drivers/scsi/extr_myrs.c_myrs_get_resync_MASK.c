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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct scsi_device {scalar_t__ channel; struct myrs_ldev_info* hostdata; int /*<<< orphan*/  host; } ;
struct myrs_ldev_info {unsigned short ldev_num; int rbld_lba; int /*<<< orphan*/  cfg_devsize; scalar_t__ rbld_active; } ;
struct myrs_hba {TYPE_1__* ctlr_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ physchan_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct myrs_hba*,unsigned short,struct myrs_ldev_info*) ; 
 int /*<<< orphan*/  myrs_raid_template ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct device*,int) ; 
 struct myrs_hba* FUNC3 (int /*<<< orphan*/ ) ; 
 struct scsi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static void
FUNC5(struct device *dev)
{
	struct scsi_device *sdev = FUNC4(dev);
	struct myrs_hba *cs = FUNC3(sdev->host);
	struct myrs_ldev_info *ldev_info = sdev->hostdata;
	u64 percent_complete = 0;
	u8 status;

	if (sdev->channel < cs->ctlr_info->physchan_present || !ldev_info)
		return;
	if (ldev_info->rbld_active) {
		unsigned short ldev_num = ldev_info->ldev_num;

		status = FUNC1(cs, ldev_num, ldev_info);
		percent_complete = ldev_info->rbld_lba * 100;
		FUNC0(percent_complete, ldev_info->cfg_devsize);
	}
	FUNC2(myrs_raid_template, dev, percent_complete);
}