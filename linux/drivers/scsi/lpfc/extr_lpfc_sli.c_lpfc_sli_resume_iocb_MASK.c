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
struct lpfc_sli_ring {scalar_t__ ringno; int /*<<< orphan*/  txq; } ;
struct lpfc_iocbq {int dummy; } ;
struct TYPE_2__ {int sli_flag; } ;
struct lpfc_hba {TYPE_1__ sli; int /*<<< orphan*/  hbalock; } ;
typedef  int /*<<< orphan*/  IOCB_t ;

/* Variables and functions */
 scalar_t__ LPFC_FCP_RING ; 
 int LPFC_PROCESS_LA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/ * FUNC3 (struct lpfc_hba*,struct lpfc_sli_ring*) ; 
 struct lpfc_iocbq* FUNC4 (struct lpfc_hba*,struct lpfc_sli_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,struct lpfc_sli_ring*,int /*<<< orphan*/ *,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,struct lpfc_sli_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,struct lpfc_sli_ring*) ; 

__attribute__((used)) static void
FUNC8(struct lpfc_hba *phba, struct lpfc_sli_ring *pring)
{
	IOCB_t *iocb;
	struct lpfc_iocbq *nextiocb;

	FUNC1(&phba->hbalock);

	/*
	 * Check to see if:
	 *  (a) there is anything on the txq to send
	 *  (b) link is up
	 *  (c) link attention events can be processed (fcp ring only)
	 *  (d) IOCB processing is not blocked by the outstanding mbox command.
	 */

	if (FUNC2(phba) &&
	    (!FUNC0(&pring->txq)) &&
	    (pring->ringno != LPFC_FCP_RING ||
	     phba->sli.sli_flag & LPFC_PROCESS_LA)) {

		while ((iocb = FUNC3(phba, pring)) &&
		       (nextiocb = FUNC4(phba, pring)))
			FUNC5(phba, pring, iocb, nextiocb);

		if (iocb)
			FUNC7(phba, pring);
		else
			FUNC6(phba, pring);
	}

	return;
}