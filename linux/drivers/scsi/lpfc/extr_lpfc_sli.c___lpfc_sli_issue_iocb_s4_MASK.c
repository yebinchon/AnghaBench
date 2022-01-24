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
typedef  union lpfc_wqe128 {int dummy; } lpfc_wqe128 ;
typedef  int uint32_t ;
struct lpfc_sli_ring {int /*<<< orphan*/  txq; int /*<<< orphan*/  ring_lock; } ;
struct lpfc_sglq {scalar_t__ sli4_xritag; int /*<<< orphan*/  sli4_lxritag; } ;
struct lpfc_queue {struct lpfc_sli_ring* pring; } ;
struct TYPE_6__ {scalar_t__ ulpCommand; } ;
struct lpfc_iocbq {int iocb_flag; size_t hba_wqidx; scalar_t__ sli4_xritag; int /*<<< orphan*/  sli4_lxritag; TYPE_3__ iocb; } ;
struct TYPE_5__ {struct lpfc_queue* els_wq; TYPE_1__* hdwq; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; } ;
struct TYPE_4__ {struct lpfc_queue* io_wq; } ;

/* Variables and functions */
 scalar_t__ CMD_ABORT_XRI_CN ; 
 scalar_t__ CMD_CLOSE_XRI_CN ; 
 int IOCB_BUSY ; 
 int IOCB_ERROR ; 
 int IOCB_SUCCESS ; 
 int LPFC_IO_FCP ; 
 int LPFC_USE_FCPWQIDX ; 
 scalar_t__ NO_XRI ; 
 int SLI_IOCB_RET_IOCB ; 
 struct lpfc_sglq* FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 struct lpfc_sglq* FUNC1 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_sglq*) ; 
 scalar_t__ FUNC6 (struct lpfc_hba*,struct lpfc_iocbq*,union lpfc_wqe128*) ; 
 scalar_t__ FUNC7 (struct lpfc_queue*,union lpfc_wqe128*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ; 

__attribute__((used)) static int
FUNC9(struct lpfc_hba *phba, uint32_t ring_number,
			 struct lpfc_iocbq *piocb, uint32_t flag)
{
	struct lpfc_sglq *sglq;
	union lpfc_wqe128 wqe;
	struct lpfc_queue *wq;
	struct lpfc_sli_ring *pring;

	/* Get the WQ */
	if ((piocb->iocb_flag & LPFC_IO_FCP) ||
	    (piocb->iocb_flag & LPFC_USE_FCPWQIDX)) {
		wq = phba->sli4_hba.hdwq[piocb->hba_wqidx].io_wq;
	} else {
		wq = phba->sli4_hba.els_wq;
	}

	/* Get corresponding ring */
	pring = wq->pring;

	/*
	 * The WQE can be either 64 or 128 bytes,
	 */

	FUNC4(&pring->ring_lock);

	if (piocb->sli4_xritag == NO_XRI) {
		if (piocb->iocb.ulpCommand == CMD_ABORT_XRI_CN ||
		    piocb->iocb.ulpCommand == CMD_CLOSE_XRI_CN)
			sglq = NULL;
		else {
			if (!FUNC3(&pring->txq)) {
				if (!(flag & SLI_IOCB_RET_IOCB)) {
					FUNC2(phba,
						pring, piocb);
					return IOCB_SUCCESS;
				} else {
					return IOCB_BUSY;
				}
			} else {
				sglq = FUNC1(phba, piocb);
				if (!sglq) {
					if (!(flag & SLI_IOCB_RET_IOCB)) {
						FUNC2(phba,
								pring,
								piocb);
						return IOCB_SUCCESS;
					} else
						return IOCB_BUSY;
				}
			}
		}
	} else if (piocb->iocb_flag &  LPFC_IO_FCP)
		/* These IO's already have an XRI and a mapped sgl. */
		sglq = NULL;
	else {
		/*
		 * This is a continuation of a commandi,(CX) so this
		 * sglq is on the active list
		 */
		sglq = FUNC0(phba, piocb->sli4_lxritag);
		if (!sglq)
			return IOCB_ERROR;
	}

	if (sglq) {
		piocb->sli4_lxritag = sglq->sli4_lxritag;
		piocb->sli4_xritag = sglq->sli4_xritag;
		if (NO_XRI == FUNC5(phba, piocb, sglq))
			return IOCB_ERROR;
	}

	if (FUNC6(phba, piocb, &wqe))
		return IOCB_ERROR;

	if (FUNC7(wq, &wqe))
		return IOCB_ERROR;
	FUNC8(phba, pring, piocb);

	return 0;
}