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
struct TYPE_6__ {int /*<<< orphan*/  iocb_event; } ;
struct lpfc_sli_ring {int /*<<< orphan*/  ring_lock; TYPE_3__ stats; } ;
struct TYPE_4__ {struct lpfc_wcqe_complete wcqe_cmpl; } ;
struct TYPE_5__ {TYPE_1__ cqe; } ;
struct lpfc_iocbq {TYPE_2__ cq_event; } ;
struct lpfc_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lpfc_wcqe_complete*) ; 
 struct lpfc_sli_ring* FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*,struct lpfc_wcqe_complete*) ; 
 struct lpfc_iocbq* FUNC4 (struct lpfc_hba*,struct lpfc_sli_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  lpfc_wcqe_c_request_tag ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct lpfc_iocbq *
FUNC10(struct lpfc_hba *phba,
			       struct lpfc_iocbq *irspiocbq)
{
	struct lpfc_sli_ring *pring;
	struct lpfc_iocbq *cmdiocbq;
	struct lpfc_wcqe_complete *wcqe;
	unsigned long iflags;

	pring = FUNC1(phba);
	if (FUNC9(!pring))
		return NULL;

	wcqe = &irspiocbq->cq_event.cqe.wcqe_cmpl;
	pring->stats.iocb_event++;
	/* Look up the ELS command IOCB and create pseudo response IOCB */
	cmdiocbq = FUNC4(phba, pring,
				FUNC0(lpfc_wcqe_c_request_tag, wcqe));
	if (FUNC9(!cmdiocbq)) {
		FUNC2(phba, KERN_WARNING, LOG_SLI,
				"0386 ELS complete with no corresponding "
				"cmdiocb: 0x%x 0x%x 0x%x 0x%x\n",
				wcqe->word0, wcqe->total_data_placed,
				wcqe->parameter, wcqe->word3);
		FUNC5(phba, irspiocbq);
		return NULL;
	}

	FUNC7(&pring->ring_lock, iflags);
	/* Put the iocb back on the txcmplq */
	FUNC6(phba, pring, cmdiocbq);
	FUNC8(&pring->ring_lock, iflags);

	/* Fake the irspiocbq and copy necessary response information */
	FUNC3(phba, irspiocbq, cmdiocbq, wcqe);

	return irspiocbq;
}