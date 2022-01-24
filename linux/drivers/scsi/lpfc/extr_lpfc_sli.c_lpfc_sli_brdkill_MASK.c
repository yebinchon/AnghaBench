#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct lpfc_sli {int /*<<< orphan*/ * mbox_active; int /*<<< orphan*/  sli_flag; int /*<<< orphan*/  mbox_tmo; } ;
struct lpfc_hba {int /*<<< orphan*/  link_state; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  link_flag; TYPE_1__* pport; int /*<<< orphan*/  HAregaddr; int /*<<< orphan*/  mbox_mem_pool; int /*<<< orphan*/  HCregaddr; struct lpfc_sli sli; } ;
struct TYPE_7__ {int /*<<< orphan*/  mbox_cmpl; } ;
struct TYPE_6__ {int stopped; int /*<<< orphan*/  port_state; } ;
typedef  TYPE_2__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HA_ERATT ; 
 int HC_ERINT_ENA ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int /*<<< orphan*/  LPFC_HBA_ERROR ; 
 int /*<<< orphan*/  LPFC_SLI_ACTIVE ; 
 int /*<<< orphan*/  LPFC_SLI_MBOX_ACTIVE ; 
 int /*<<< orphan*/  LS_IGNORE_ERATT ; 
 int MBX_BUSY ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int MBX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  lpfc_sli_def_mbox_cmpl ; 
 int FUNC5 (struct lpfc_hba*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 

int
FUNC13(struct lpfc_hba *phba)
{
	struct lpfc_sli *psli;
	LPFC_MBOXQ_t *pmb;
	uint32_t status;
	uint32_t ha_copy;
	int retval;
	int i = 0;

	psli = &phba->sli;

	/* Kill HBA */
	FUNC3(phba, KERN_INFO, LOG_SLI,
			"0329 Kill HBA Data: x%x x%x\n",
			phba->pport->port_state, psli->sli_flag);

	pmb = (LPFC_MBOXQ_t *) FUNC7(phba->mbox_mem_pool, GFP_KERNEL);
	if (!pmb)
		return 1;

	/* Disable the error attention */
	FUNC10(&phba->hbalock);
	if (FUNC4(phba->HCregaddr, &status)) {
		FUNC11(&phba->hbalock);
		FUNC8(pmb, phba->mbox_mem_pool);
		return 1;
	}
	status &= ~HC_ERINT_ENA;
	FUNC12(status, phba->HCregaddr);
	FUNC9(phba->HCregaddr); /* flush */
	phba->link_flag |= LS_IGNORE_ERATT;
	FUNC11(&phba->hbalock);

	FUNC2(phba, pmb);
	pmb->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
	retval = FUNC5(phba, pmb, MBX_NOWAIT);

	if (retval != MBX_SUCCESS) {
		if (retval != MBX_BUSY)
			FUNC8(pmb, phba->mbox_mem_pool);
		FUNC3(phba, KERN_ERR, LOG_SLI,
				"2752 KILL_BOARD command failed retval %d\n",
				retval);
		FUNC10(&phba->hbalock);
		phba->link_flag &= ~LS_IGNORE_ERATT;
		FUNC11(&phba->hbalock);
		return 1;
	}

	FUNC10(&phba->hbalock);
	psli->sli_flag &= ~LPFC_SLI_ACTIVE;
	FUNC11(&phba->hbalock);

	FUNC8(pmb, phba->mbox_mem_pool);

	/* There is no completion for a KILL_BOARD mbox cmd. Check for an error
	 * attention every 100ms for 3 seconds. If we don't get ERATT after
	 * 3 seconds we still set HBA_ERROR state because the status of the
	 * board is now undefined.
	 */
	if (FUNC4(phba->HAregaddr, &ha_copy))
		return 1;
	while ((i++ < 30) && !(ha_copy & HA_ERATT)) {
		FUNC6(100);
		if (FUNC4(phba->HAregaddr, &ha_copy))
			return 1;
	}

	FUNC0(&psli->mbox_tmo);
	if (ha_copy & HA_ERATT) {
		FUNC12(HA_ERATT, phba->HAregaddr);
		phba->pport->stopped = 1;
	}
	FUNC10(&phba->hbalock);
	psli->sli_flag &= ~LPFC_SLI_MBOX_ACTIVE;
	psli->mbox_active = NULL;
	phba->link_flag &= ~LS_IGNORE_ERATT;
	FUNC11(&phba->hbalock);

	FUNC1(phba);
	phba->link_state = LPFC_HBA_ERROR;

	return ha_copy & HA_ERATT ? 0 : 1;
}