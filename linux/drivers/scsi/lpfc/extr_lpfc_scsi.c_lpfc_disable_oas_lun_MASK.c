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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct lpfc_name {int dummy; } ;
struct lpfc_hba {int /*<<< orphan*/  devicelock; int /*<<< orphan*/  luns; int /*<<< orphan*/  cfg_fof; } ;
struct lpfc_device_data {int oas_enabled; int /*<<< orphan*/  available; int /*<<< orphan*/  priority; } ;

/* Variables and functions */
 struct lpfc_device_data* FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ *,struct lpfc_name*,struct lpfc_name*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_device_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

bool
FUNC5(struct lpfc_hba *phba, struct lpfc_name *vport_wwpn,
		     struct lpfc_name *target_wwpn, uint64_t lun, uint8_t pri)
{

	struct lpfc_device_data *lun_info;
	unsigned long flags;

	if (FUNC4(!phba) || !vport_wwpn || !target_wwpn ||
	    !phba->cfg_fof)
		return false;

	FUNC2(&phba->devicelock, flags);

	/* Check to see if the lun is available. */
	lun_info = FUNC0(phba,
					  &phba->luns, vport_wwpn,
					  target_wwpn, lun);
	if (lun_info) {
		lun_info->oas_enabled = false;
		lun_info->priority = pri;
		if (!lun_info->available)
			FUNC1(phba, lun_info);
		FUNC3(&phba->devicelock, flags);
		return true;
	}

	FUNC3(&phba->devicelock, flags);
	return false;
}