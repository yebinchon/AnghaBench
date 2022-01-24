#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lpfc_sli_ring {int /*<<< orphan*/  txq; } ;
struct lpfc_iocbq {int /*<<< orphan*/  list; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
		    struct lpfc_iocbq *piocb)
{
	FUNC1(&phba->hbalock);
	/* Insert the caller's iocb in the txq tail for later processing. */
	FUNC0(&piocb->list, &pring->txq);
}