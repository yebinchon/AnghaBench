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
struct pqi_scsi_dev {scalar_t__ raid_bypass_enabled; } ;
struct pqi_ctrl_info {int /*<<< orphan*/  scsi_device_list_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct pqi_ctrl_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct scsi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
	struct device_attribute *attr, char *buffer)
{
	struct pqi_ctrl_info *ctrl_info;
	struct scsi_device *sdev;
	struct pqi_scsi_dev *device;
	unsigned long flags;

	sdev = FUNC3(dev);
	ctrl_info = FUNC0(sdev->host);

	FUNC1(&ctrl_info->scsi_device_list_lock, flags);

	device = sdev->hostdata;
	buffer[0] = device->raid_bypass_enabled ? '1' : '0';
	buffer[1] = '\n';
	buffer[2] = '\0';

	FUNC2(&ctrl_info->scsi_device_list_lock, flags);

	return 2;
}