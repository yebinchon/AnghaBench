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
struct scsi_device {struct lpfc_device_data* hostdata; TYPE_1__* host; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int /*<<< orphan*/  devicelock; scalar_t__ cfg_fof; int /*<<< orphan*/  sdev_cnt; } ;
struct lpfc_device_data {int available; int /*<<< orphan*/  oas_enabled; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_device_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct scsi_device *sdev)
{
	struct lpfc_vport *vport = (struct lpfc_vport *) sdev->host->hostdata;
	struct lpfc_hba   *phba = vport->phba;
	unsigned long flags;
	struct lpfc_device_data *device_data = sdev->hostdata;

	FUNC0(&phba->sdev_cnt);
	if ((phba->cfg_fof) && (device_data)) {
		FUNC2(&phba->devicelock, flags);
		device_data->available = false;
		if (!device_data->oas_enabled)
			FUNC1(phba, device_data);
		FUNC3(&phba->devicelock, flags);
	}
	sdev->hostdata = NULL;
	return;
}