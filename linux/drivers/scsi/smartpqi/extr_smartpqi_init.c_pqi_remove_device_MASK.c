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
struct pqi_scsi_dev {int /*<<< orphan*/  sdev; int /*<<< orphan*/  scsi_cmds_outstanding; int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  bus; } ;
struct pqi_ctrl_info {TYPE_2__* scsi_host; TYPE_1__* pci_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_no; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PQI_PENDING_IO_TIMEOUT_SECS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pqi_scsi_dev*) ; 
 int FUNC3 (struct pqi_ctrl_info*,struct pqi_scsi_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pqi_scsi_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pqi_scsi_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(struct pqi_ctrl_info *ctrl_info,
	struct pqi_scsi_dev *device)
{
	int rc;

	FUNC2(device);

	rc = FUNC3(ctrl_info, device,
		PQI_PENDING_IO_TIMEOUT_SECS);
	if (rc)
		FUNC1(&ctrl_info->pci_dev->dev,
			"scsi %d:%d:%d:%d removing device with %d outstanding commands\n",
			ctrl_info->scsi_host->host_no, device->bus,
			device->target, device->lun,
			FUNC0(&device->scsi_cmds_outstanding));

	if (FUNC4(device))
		FUNC6(device->sdev);
	else
		FUNC5(device);
}