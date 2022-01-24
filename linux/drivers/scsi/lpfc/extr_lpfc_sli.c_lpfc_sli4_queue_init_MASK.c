#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct lpfc_sli_ring {int /*<<< orphan*/  ring_lock; int /*<<< orphan*/  iocb_continueq; int /*<<< orphan*/  txcmplq; int /*<<< orphan*/  txq; scalar_t__ txcmplq_cnt; void* ringno; scalar_t__ flag; } ;
struct lpfc_sli {int /*<<< orphan*/  mboxq_cmpl; int /*<<< orphan*/  mboxq; } ;
struct TYPE_10__ {TYPE_4__* nvmels_wq; TYPE_3__* els_wq; TYPE_2__* hdwq; } ;
struct lpfc_hba {int cfg_hdw_queue; int cfg_enable_fc4_type; int /*<<< orphan*/  hbalock; TYPE_5__ sli4_hba; struct lpfc_sli sli; } ;
struct TYPE_9__ {struct lpfc_sli_ring* pring; } ;
struct TYPE_8__ {struct lpfc_sli_ring* pring; } ;
struct TYPE_7__ {TYPE_1__* io_wq; } ;
struct TYPE_6__ {struct lpfc_sli_ring* pring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* LPFC_ELS_RING ; 
 int LPFC_ENABLE_NVME ; 
 void* LPFC_FCP_RING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct lpfc_hba *phba)
{
	struct lpfc_sli *psli;
	struct lpfc_sli_ring *pring;
	int i;

	psli = &phba->sli;
	FUNC2(&phba->hbalock);
	FUNC0(&psli->mboxq);
	FUNC0(&psli->mboxq_cmpl);
	/* Initialize list headers for txq and txcmplq as double linked lists */
	for (i = 0; i < phba->cfg_hdw_queue; i++) {
		pring = phba->sli4_hba.hdwq[i].io_wq->pring;
		pring->flag = 0;
		pring->ringno = LPFC_FCP_RING;
		pring->txcmplq_cnt = 0;
		FUNC0(&pring->txq);
		FUNC0(&pring->txcmplq);
		FUNC0(&pring->iocb_continueq);
		FUNC1(&pring->ring_lock);
	}
	pring = phba->sli4_hba.els_wq->pring;
	pring->flag = 0;
	pring->ringno = LPFC_ELS_RING;
	pring->txcmplq_cnt = 0;
	FUNC0(&pring->txq);
	FUNC0(&pring->txcmplq);
	FUNC0(&pring->iocb_continueq);
	FUNC1(&pring->ring_lock);

	if (phba->cfg_enable_fc4_type & LPFC_ENABLE_NVME) {
		pring = phba->sli4_hba.nvmels_wq->pring;
		pring->flag = 0;
		pring->ringno = LPFC_ELS_RING;
		pring->txcmplq_cnt = 0;
		FUNC0(&pring->txq);
		FUNC0(&pring->txcmplq);
		FUNC0(&pring->iocb_continueq);
		FUNC1(&pring->ring_lock);
	}

	FUNC3(&phba->hbalock);
}