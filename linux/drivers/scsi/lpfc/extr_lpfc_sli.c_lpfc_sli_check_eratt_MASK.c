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
struct lpfc_hba {int link_flag; int hba_flag; int sli_rev; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int DEFER_ERATT ; 
 int HBA_ERATT_HANDLED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
#define  LPFC_SLI_REV2 130 
#define  LPFC_SLI_REV3 129 
#define  LPFC_SLI_REV4 128 
 int LS_IGNORE_ERATT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct lpfc_hba*) ; 
 int FUNC2 (struct lpfc_hba*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

int
FUNC7(struct lpfc_hba *phba)
{
	uint32_t ha_copy;

	/* If somebody is waiting to handle an eratt, don't process it
	 * here. The brdkill function will do this.
	 */
	if (phba->link_flag & LS_IGNORE_ERATT)
		return 0;

	/* Check if interrupt handler handles this ERATT */
	FUNC4(&phba->hbalock);
	if (phba->hba_flag & HBA_ERATT_HANDLED) {
		/* Interrupt handler has handled ERATT */
		FUNC5(&phba->hbalock);
		return 0;
	}

	/*
	 * If there is deferred error attention, do not check for error
	 * attention
	 */
	if (FUNC6(phba->hba_flag & DEFER_ERATT)) {
		FUNC5(&phba->hbalock);
		return 0;
	}

	/* If PCI channel is offline, don't process it */
	if (FUNC6(FUNC3(phba->pcidev))) {
		FUNC5(&phba->hbalock);
		return 0;
	}

	switch (phba->sli_rev) {
	case LPFC_SLI_REV2:
	case LPFC_SLI_REV3:
		/* Read chip Host Attention (HA) register */
		ha_copy = FUNC2(phba);
		break;
	case LPFC_SLI_REV4:
		/* Read device Uncoverable Error (UERR) registers */
		ha_copy = FUNC1(phba);
		break;
	default:
		FUNC0(phba, KERN_ERR, LOG_INIT,
				"0299 Invalid SLI revision (%d)\n",
				phba->sli_rev);
		ha_copy = 0;
		break;
	}
	FUNC5(&phba->hbalock);

	return ha_copy;
}