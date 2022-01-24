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
typedef  int u8 ;
struct scsi_device {struct pqi_scsi_dev* hostdata; int /*<<< orphan*/  host; } ;
struct pqi_scsi_dev {int bay; int active_path_index; int path_map; scalar_t__ devtype; int* box; int /*<<< orphan*/ * phys_connector; int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  bus; } ;
struct pqi_ctrl_info {int /*<<< orphan*/  scsi_device_list_lock; TYPE_1__* scsi_host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  phys_connector ;
struct TYPE_2__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int ENODEV ; 
 int MAX_PATHS ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ TYPE_DISK ; 
 scalar_t__ TYPE_RAID ; 
 scalar_t__ TYPE_ZBC ; 
 int /*<<< orphan*/  FUNC0 (unsigned char**,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct pqi_scsi_dev*) ; 
 scalar_t__ FUNC2 (struct pqi_scsi_dev*) ; 
 scalar_t__ FUNC3 (char*,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct pqi_ctrl_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct scsi_device* FUNC8 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
	struct device_attribute *attr, char *buf)
{
	struct pqi_ctrl_info *ctrl_info;
	struct scsi_device *sdev;
	struct pqi_scsi_dev *device;
	unsigned long flags;
	int i;
	int output_len = 0;
	u8 box;
	u8 bay;
	u8 path_map_index = 0;
	char *active;
	unsigned char phys_connector[2];

	sdev = FUNC8(dev);
	ctrl_info = FUNC5(sdev->host);

	FUNC6(&ctrl_info->scsi_device_list_lock, flags);

	device = sdev->hostdata;
	if (!device) {
		FUNC7(&ctrl_info->scsi_device_list_lock,
			flags);
		return -ENODEV;
	}

	bay = device->bay;
	for (i = 0; i < MAX_PATHS; i++) {
		path_map_index = 1<<i;
		if (i == device->active_path_index)
			active = "Active";
		else if (device->path_map & path_map_index)
			active = "Inactive";
		else
			continue;

		output_len += FUNC3(buf + output_len,
					PAGE_SIZE - output_len,
					"[%d:%d:%d:%d] %20.20s ",
					ctrl_info->scsi_host->host_no,
					device->bus, device->target,
					device->lun,
					FUNC4(device->devtype));

		if (device->devtype == TYPE_RAID ||
			FUNC2(device))
			goto end_buffer;

		FUNC0(&phys_connector, &device->phys_connector[i],
			sizeof(phys_connector));
		if (phys_connector[0] < '0')
			phys_connector[0] = '0';
		if (phys_connector[1] < '0')
			phys_connector[1] = '0';

		output_len += FUNC3(buf + output_len,
					PAGE_SIZE - output_len,
					"PORT: %.2s ", phys_connector);

		box = device->box[i];
		if (box != 0 && box != 0xFF)
			output_len += FUNC3(buf + output_len,
						PAGE_SIZE - output_len,
						"BOX: %hhu ", box);

		if ((device->devtype == TYPE_DISK ||
			device->devtype == TYPE_ZBC) &&
			FUNC1(device))
			output_len += FUNC3(buf + output_len,
						PAGE_SIZE - output_len,
						"BAY: %hhu ", bay);

end_buffer:
		output_len += FUNC3(buf + output_len,
					PAGE_SIZE - output_len,
					"%s\n", active);
	}

	FUNC7(&ctrl_info->scsi_device_list_lock, flags);
	return output_len;
}