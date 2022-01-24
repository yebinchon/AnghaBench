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
struct TYPE_4__ {int sli_flag; } ;
struct TYPE_3__ {int /*<<< orphan*/  lpfc_wq_list; int /*<<< orphan*/  mbx_cq; int /*<<< orphan*/  nvmels_cq; int /*<<< orphan*/  els_cq; int /*<<< orphan*/  dat_rq; int /*<<< orphan*/  hdr_rq; int /*<<< orphan*/  nvmels_wq; int /*<<< orphan*/  els_wq; int /*<<< orphan*/  mbx_wq; int /*<<< orphan*/  nvmet_mrq_data; int /*<<< orphan*/  nvmet_mrq_hdr; int /*<<< orphan*/  nvmet_cqset; scalar_t__ hdwq; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; TYPE_2__ sli; TYPE_1__ sli4_hba; int /*<<< orphan*/  cfg_nvmet_mrq; scalar_t__ nvmet_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int LPFC_QUEUE_FREE_INIT ; 
 int LPFC_QUEUE_FREE_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct lpfc_hba *phba)
{
	/*
	 * Set FREE_INIT before beginning to free the queues.
	 * Wait until the users of queues to acknowledge to
	 * release queues by clearing FREE_WAIT.
	 */
	FUNC5(&phba->hbalock);
	phba->sli.sli_flag |= LPFC_QUEUE_FREE_INIT;
	while (phba->sli.sli_flag & LPFC_QUEUE_FREE_WAIT) {
		FUNC6(&phba->hbalock);
		FUNC4(20);
		FUNC5(&phba->hbalock);
	}
	FUNC6(&phba->hbalock);

	/* Release HBA eqs */
	if (phba->sli4_hba.hdwq)
		FUNC2(phba);

	if (phba->nvmet_support) {
		FUNC3(&phba->sli4_hba.nvmet_cqset,
					 phba->cfg_nvmet_mrq);

		FUNC3(&phba->sli4_hba.nvmet_mrq_hdr,
					 phba->cfg_nvmet_mrq);
		FUNC3(&phba->sli4_hba.nvmet_mrq_data,
					 phba->cfg_nvmet_mrq);
	}

	/* Release mailbox command work queue */
	FUNC1(&phba->sli4_hba.mbx_wq);

	/* Release ELS work queue */
	FUNC1(&phba->sli4_hba.els_wq);

	/* Release ELS work queue */
	FUNC1(&phba->sli4_hba.nvmels_wq);

	/* Release unsolicited receive queue */
	FUNC1(&phba->sli4_hba.hdr_rq);
	FUNC1(&phba->sli4_hba.dat_rq);

	/* Release ELS complete queue */
	FUNC1(&phba->sli4_hba.els_cq);

	/* Release NVME LS complete queue */
	FUNC1(&phba->sli4_hba.nvmels_cq);

	/* Release mailbox command complete queue */
	FUNC1(&phba->sli4_hba.mbx_cq);

	/* Everything on this list has been freed */
	FUNC0(&phba->sli4_hba.lpfc_wq_list);

	/* Done with freeing the queues */
	FUNC5(&phba->hbalock);
	phba->sli.sli_flag &= ~LPFC_QUEUE_FREE_INIT;
	FUNC6(&phba->hbalock);
}