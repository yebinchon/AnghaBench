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
struct scsi_device {int /*<<< orphan*/  host; struct pqi_scsi_dev* hostdata; } ;
struct pqi_scsi_dev {int device_offline; int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  bus; } ;
struct pqi_ctrl_info {TYPE_1__* scsi_host; TYPE_2__* pci_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pqi_ctrl_info*) ; 
 struct pqi_ctrl_info* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct scsi_device *sdev, char *path)
{
	struct pqi_ctrl_info *ctrl_info;
	struct pqi_scsi_dev *device;

	device = sdev->hostdata;
	if (device->device_offline)
		return;

	device->device_offline = true;
	ctrl_info = FUNC2(sdev->host);
	FUNC1(ctrl_info);
	FUNC0(&ctrl_info->pci_dev->dev, "re-scanning %s scsi %d:%d:%d:%d\n",
		path, ctrl_info->scsi_host->host_no, device->bus,
		device->target, device->lun);
}