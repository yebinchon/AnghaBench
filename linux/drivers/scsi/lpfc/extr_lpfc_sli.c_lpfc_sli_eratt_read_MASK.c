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
typedef  int uint32_t ;
struct lpfc_hba {int work_hs; int work_ha; int /*<<< orphan*/  hba_flag; int /*<<< orphan*/  HCregaddr; int /*<<< orphan*/  HAregaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFER_ERATT ; 
 int HA_ERATT ; 
 int /*<<< orphan*/  HBA_ERATT_HANDLED ; 
 int HS_FFER1 ; 
 int HS_FFER2 ; 
 int HS_FFER3 ; 
 int HS_FFER4 ; 
 int HS_FFER5 ; 
 int HS_FFER6 ; 
 int HS_FFER7 ; 
 int HS_FFER8 ; 
 int UNPLUG_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct lpfc_hba *phba)
{
	uint32_t ha_copy;

	/* Read chip Host Attention (HA) register */
	if (FUNC0(phba->HAregaddr, &ha_copy))
		goto unplug_err;

	if (ha_copy & HA_ERATT) {
		/* Read host status register to retrieve error event */
		if (FUNC1(phba))
			goto unplug_err;

		/* Check if there is a deferred error condition is active */
		if ((HS_FFER1 & phba->work_hs) &&
		    ((HS_FFER2 | HS_FFER3 | HS_FFER4 | HS_FFER5 |
		      HS_FFER6 | HS_FFER7 | HS_FFER8) & phba->work_hs)) {
			phba->hba_flag |= DEFER_ERATT;
			/* Clear all interrupt enable conditions */
			FUNC3(0, phba->HCregaddr);
			FUNC2(phba->HCregaddr);
		}

		/* Set the driver HA work bitmap */
		phba->work_ha |= HA_ERATT;
		/* Indicate polling handles this ERATT */
		phba->hba_flag |= HBA_ERATT_HANDLED;
		return 1;
	}
	return 0;

unplug_err:
	/* Set the driver HS work bitmap */
	phba->work_hs |= UNPLUG_ERR;
	/* Set the driver HA work bitmap */
	phba->work_ha |= HA_ERATT;
	/* Indicate polling handles this ERATT */
	phba->hba_flag |= HBA_ERATT_HANDLED;
	return 1;
}