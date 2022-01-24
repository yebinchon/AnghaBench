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
typedef  int uint32_t ;
struct lpfc_sli {int /*<<< orphan*/  stats_start; int /*<<< orphan*/  lnk_stat_offsets; int /*<<< orphan*/  sli_flag; } ;
struct lpfc_hba {int hba_flag; int /*<<< orphan*/  pcidev; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  link_state; TYPE_1__* pport; struct lpfc_sli sli; } ;
struct TYPE_2__ {scalar_t__ stopped; int /*<<< orphan*/  port_state; } ;

/* Variables and functions */
 int HBA_AER_ENABLED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int /*<<< orphan*/  LPFC_HBA_ERROR ; 
 int /*<<< orphan*/  LPFC_INIT_START ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct lpfc_hba *phba)
{
	struct lpfc_sli *psli = &phba->sli;
	uint32_t hba_aer_enabled;
	int rc;

	/* Restart HBA */
	FUNC2(phba, KERN_INFO, LOG_SLI,
			"0296 Restart HBA Data: x%x x%x\n",
			phba->pport->port_state, psli->sli_flag);

	/* Take PCIe device Advanced Error Reporting (AER) state */
	hba_aer_enabled = phba->hba_flag & HBA_AER_ENABLED;

	rc = FUNC3(phba);
	if (rc) {
		phba->link_state = LPFC_HBA_ERROR;
		goto hba_down_queue;
	}

	FUNC7(&phba->hbalock);
	phba->pport->stopped = 0;
	phba->link_state = LPFC_INIT_START;
	phba->hba_flag = 0;
	FUNC8(&phba->hbalock);

	FUNC5(&psli->lnk_stat_offsets, 0, sizeof(psli->lnk_stat_offsets));
	psli->stats_start = FUNC0();

	/* Reset HBA AER if it was enabled, note hba_flag was reset above */
	if (hba_aer_enabled)
		FUNC6(phba->pcidev);

hba_down_queue:
	FUNC1(phba);
	FUNC4(phba);

	return rc;
}