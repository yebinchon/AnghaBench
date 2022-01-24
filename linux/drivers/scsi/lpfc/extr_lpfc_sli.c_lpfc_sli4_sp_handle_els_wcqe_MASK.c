#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lpfc_wcqe_complete {int /*<<< orphan*/  word3; int /*<<< orphan*/  parameter; int /*<<< orphan*/  total_data_placed; int /*<<< orphan*/  word0; } ;
struct lpfc_sli_ring {int /*<<< orphan*/  txcmplq; int /*<<< orphan*/  txq; } ;
struct lpfc_queue {struct lpfc_sli_ring* pring; } ;
struct TYPE_4__ {int /*<<< orphan*/  wcqe_cmpl; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; TYPE_1__ cqe; } ;
struct lpfc_iocbq {TYPE_2__ cq_event; } ;
struct TYPE_6__ {int /*<<< orphan*/  sp_queue_event; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  hba_flag; TYPE_3__ sli4_hba; int /*<<< orphan*/  iocb_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  HBA_SP_QUEUE_EVT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lpfc_wcqe_complete*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int,...) ; 
 struct lpfc_iocbq* FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  lpfc_wcqe_c_status ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct lpfc_wcqe_complete*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9(struct lpfc_hba *phba, struct lpfc_queue *cq,
			     struct lpfc_wcqe_complete *wcqe)
{
	struct lpfc_iocbq *irspiocbq;
	unsigned long iflags;
	struct lpfc_sli_ring *pring = cq->pring;
	int txq_cnt = 0;
	int txcmplq_cnt = 0;
	int fcp_txcmplq_cnt = 0;

	/* Check for response status */
	if (FUNC8(FUNC0(lpfc_wcqe_c_status, wcqe))) {
		/* Log the error status */
		FUNC3(phba, KERN_INFO, LOG_SLI,
				"0357 ELS CQE error: status=x%x: "
				"CQE: %08x %08x %08x %08x\n",
				FUNC0(lpfc_wcqe_c_status, wcqe),
				wcqe->word0, wcqe->total_data_placed,
				wcqe->parameter, wcqe->word3);
	}

	/* Get an irspiocbq for later ELS response processing use */
	irspiocbq = FUNC4(phba);
	if (!irspiocbq) {
		if (!FUNC2(&pring->txq))
			txq_cnt++;
		if (!FUNC2(&pring->txcmplq))
			txcmplq_cnt++;
		FUNC3(phba, KERN_ERR, LOG_SLI,
			"0387 NO IOCBQ data: txq_cnt=%d iocb_cnt=%d "
			"fcp_txcmplq_cnt=%d, els_txcmplq_cnt=%d\n",
			txq_cnt, phba->iocb_cnt,
			fcp_txcmplq_cnt,
			txcmplq_cnt);
		return false;
	}

	/* Save off the slow-path queue event for work thread to process */
	FUNC5(&irspiocbq->cq_event.cqe.wcqe_cmpl, wcqe, sizeof(*wcqe));
	FUNC6(&phba->hbalock, iflags);
	FUNC1(&irspiocbq->cq_event.list,
		      &phba->sli4_hba.sp_queue_event);
	phba->hba_flag |= HBA_SP_QUEUE_EVT;
	FUNC7(&phba->hbalock, iflags);

	return true;
}