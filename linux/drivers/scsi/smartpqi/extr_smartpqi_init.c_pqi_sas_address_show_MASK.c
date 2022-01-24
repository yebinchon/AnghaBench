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
typedef  int /*<<< orphan*/  u64 ;
struct scsi_device {struct pqi_scsi_dev* hostdata; int /*<<< orphan*/  host; } ;
struct pqi_scsi_dev {int /*<<< orphan*/  sas_address; } ;
struct pqi_ctrl_info {int /*<<< orphan*/  scsi_device_list_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct pqi_scsi_dev*) ; 
 struct pqi_ctrl_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct scsi_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
	struct device_attribute *attr, char *buffer)
{
	struct pqi_ctrl_info *ctrl_info;
	struct scsi_device *sdev;
	struct pqi_scsi_dev *device;
	unsigned long flags;
	u64 sas_address;

	sdev = FUNC5(dev);
	ctrl_info = FUNC1(sdev->host);

	FUNC3(&ctrl_info->scsi_device_list_lock, flags);

	device = sdev->hostdata;
	if (FUNC0(device)) {
		FUNC4(&ctrl_info->scsi_device_list_lock,
			flags);
		return -ENODEV;
	}
	sas_address = device->sas_address;

	FUNC4(&ctrl_info->scsi_device_list_lock, flags);

	return FUNC2(buffer, PAGE_SIZE, "0x%016llx\n", sas_address);
}