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
struct scsi_device {scalar_t__ channel; struct myrb_ldev_info* hostdata; int /*<<< orphan*/  host; } ;
struct myrb_ldev_info {int state; int /*<<< orphan*/  raid_level; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 struct scsi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct scsi_device *sdev = FUNC3(dev);

	if (sdev->channel == FUNC0(sdev->host)) {
		struct myrb_ldev_info *ldev_info = sdev->hostdata;
		const char *name;

		if (!ldev_info)
			return -ENXIO;

		name = FUNC1(ldev_info->raid_level);
		if (!name)
			return FUNC2(buf, 32, "Invalid (%02X)\n",
					ldev_info->state);
		return FUNC2(buf, 32, "%s\n", name);
	}
	return FUNC2(buf, 32, "Physical Drive\n");
}