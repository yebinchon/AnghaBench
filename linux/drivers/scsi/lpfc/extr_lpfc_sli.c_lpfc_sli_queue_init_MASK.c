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
struct TYPE_3__ {scalar_t__ cmdidx; scalar_t__ local_getidx; scalar_t__ next_cmdidx; } ;
struct TYPE_4__ {TYPE_1__ sli3; } ;
struct lpfc_sli_ring {int ringno; int /*<<< orphan*/  ring_lock; int /*<<< orphan*/  txcmplq; int /*<<< orphan*/  txq; scalar_t__ flag; int /*<<< orphan*/  postbufq; int /*<<< orphan*/  iocb_continue_saveq; int /*<<< orphan*/  iocb_continueq; TYPE_2__ sli; } ;
struct lpfc_sli {int num_rings; struct lpfc_sli_ring* sli3_ring; int /*<<< orphan*/  mboxq_cmpl; int /*<<< orphan*/  mboxq; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; struct lpfc_sli sli; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
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
	for (i = 0; i < psli->num_rings; i++) {
		pring = &psli->sli3_ring[i];
		pring->ringno = i;
		pring->sli.sli3.next_cmdidx  = 0;
		pring->sli.sli3.local_getidx = 0;
		pring->sli.sli3.cmdidx = 0;
		FUNC0(&pring->iocb_continueq);
		FUNC0(&pring->iocb_continue_saveq);
		FUNC0(&pring->postbufq);
		pring->flag = 0;
		FUNC0(&pring->txq);
		FUNC0(&pring->txcmplq);
		FUNC1(&pring->ring_lock);
	}
	FUNC3(&phba->hbalock);
}