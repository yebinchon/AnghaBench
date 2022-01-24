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
struct scsi_device {struct pqi_scsi_dev* hostdata; int /*<<< orphan*/  host; } ;
struct pqi_scsi_dev {int /*<<< orphan*/  raid_level; } ;
struct pqi_ctrl_info {int /*<<< orphan*/  scsi_device_list_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct pqi_scsi_dev*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 struct pqi_ctrl_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct scsi_device* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
	struct device_attribute *attr, char *buffer)
{
	struct pqi_ctrl_info *ctrl_info;
	struct scsi_device *sdev;
	struct pqi_scsi_dev *device;
	unsigned long flags;
	char *raid_level;

	sdev = FUNC6(dev);
	ctrl_info = FUNC2(sdev->host);

	FUNC4(&ctrl_info->scsi_device_list_lock, flags);

	device = sdev->hostdata;

	if (FUNC0(device))
		raid_level = FUNC1(device->raid_level);
	else
		raid_level = "N/A";

	FUNC5(&ctrl_info->scsi_device_list_lock, flags);

	return FUNC3(buffer, PAGE_SIZE, "%s\n", raid_level);
}