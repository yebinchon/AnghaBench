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
struct TYPE_2__ {int /*<<< orphan*/  mbox_tmo; } ;
struct lpfc_hba {scalar_t__ sli_rev; int pci_dev_grp; int /*<<< orphan*/  fcp_poll_timer; scalar_t__ hb_outstanding; int /*<<< orphan*/  hba_flag; int /*<<< orphan*/  rrq_tmr; int /*<<< orphan*/  hb_tmofunc; int /*<<< orphan*/  eratt_poll; int /*<<< orphan*/  fabric_block_timer; TYPE_1__ sli; int /*<<< orphan*/  eq_delay_work; scalar_t__ pport; } ;

/* Variables and functions */
 int /*<<< orphan*/  HBA_RRQ_ACTIVE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
#define  LPFC_PCI_DEV_LP 129 
#define  LPFC_PCI_DEV_OC 128 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void
FUNC5(struct lpfc_hba *phba)
{
	if (phba->pport)
		FUNC4(phba->pport);
	FUNC0(&phba->eq_delay_work);
	FUNC1(&phba->sli.mbox_tmo);
	FUNC1(&phba->fabric_block_timer);
	FUNC1(&phba->eratt_poll);
	FUNC1(&phba->hb_tmofunc);
	if (phba->sli_rev == LPFC_SLI_REV4) {
		FUNC1(&phba->rrq_tmr);
		phba->hba_flag &= ~HBA_RRQ_ACTIVE;
	}
	phba->hb_outstanding = 0;

	switch (phba->pci_dev_grp) {
	case LPFC_PCI_DEV_LP:
		/* Stop any LightPulse device specific driver timers */
		FUNC1(&phba->fcp_poll_timer);
		break;
	case LPFC_PCI_DEV_OC:
		/* Stop any OneConnect device specific driver timers */
		FUNC3(phba);
		break;
	default:
		FUNC2(phba, KERN_ERR, LOG_INIT,
				"0297 Invalid device group (x%x)\n",
				phba->pci_dev_grp);
		break;
	}
	return;
}