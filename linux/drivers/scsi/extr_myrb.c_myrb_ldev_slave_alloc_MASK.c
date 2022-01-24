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
struct scsi_device {unsigned short id; int /*<<< orphan*/  sdev_gendev; int /*<<< orphan*/  hostdata; int /*<<< orphan*/  host; } ;
struct myrb_ldev_info {int raid_level; int /*<<< orphan*/  state; } ;
struct myrb_hba {struct myrb_ldev_info* ldev_info_buf; } ;
typedef  enum raid_level { ____Placeholder_raid_level } raid_level ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  MYRB_RAID_JBOD 133 
#define  MYRB_RAID_LEVEL0 132 
#define  MYRB_RAID_LEVEL1 131 
#define  MYRB_RAID_LEVEL3 130 
#define  MYRB_RAID_LEVEL5 129 
#define  MYRB_RAID_LEVEL6 128 
 int RAID_LEVEL_1 ; 
 int RAID_LEVEL_3 ; 
 int RAID_LEVEL_5 ; 
 int RAID_LEVEL_6 ; 
 int RAID_LEVEL_JBOD ; 
 int RAID_LEVEL_LINEAR ; 
 int RAID_LEVEL_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct myrb_ldev_info*,int) ; 
 int /*<<< orphan*/  myrb_raid_template ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct myrb_hba* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct scsi_device *sdev)
{
	struct myrb_hba *cb = FUNC4(sdev->host);
	struct myrb_ldev_info *ldev_info;
	unsigned short ldev_num = sdev->id;
	enum raid_level level;

	ldev_info = cb->ldev_info_buf + ldev_num;
	if (!ldev_info)
		return -ENXIO;

	sdev->hostdata = FUNC1(sizeof(*ldev_info), GFP_KERNEL);
	if (!sdev->hostdata)
		return -ENOMEM;
	FUNC0(&sdev->sdev_gendev,
		"slave alloc ldev %d state %x\n",
		ldev_num, ldev_info->state);
	FUNC2(sdev->hostdata, ldev_info,
	       sizeof(*ldev_info));
	switch (ldev_info->raid_level) {
	case MYRB_RAID_LEVEL0:
		level = RAID_LEVEL_LINEAR;
		break;
	case MYRB_RAID_LEVEL1:
		level = RAID_LEVEL_1;
		break;
	case MYRB_RAID_LEVEL3:
		level = RAID_LEVEL_3;
		break;
	case MYRB_RAID_LEVEL5:
		level = RAID_LEVEL_5;
		break;
	case MYRB_RAID_LEVEL6:
		level = RAID_LEVEL_6;
		break;
	case MYRB_RAID_JBOD:
		level = RAID_LEVEL_JBOD;
		break;
	default:
		level = RAID_LEVEL_UNKNOWN;
		break;
	}
	FUNC3(myrb_raid_template, &sdev->sdev_gendev, level);
	return 0;
}