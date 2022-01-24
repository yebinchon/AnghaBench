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
struct lpfc_queue {scalar_t__ qe_valid; int /*<<< orphan*/  host_index; } ;
struct lpfc_eqe {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct lpfc_eqe*) ; 
 int /*<<< orphan*/  lpfc_eqe_valid ; 
 struct lpfc_eqe* FUNC1 (struct lpfc_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct lpfc_eqe *
FUNC4(struct lpfc_queue *q)
{
	struct lpfc_eqe *eqe;

	/* sanity check on queue memory */
	if (FUNC3(!q))
		return NULL;
	eqe = FUNC1(q, q->host_index);

	/* If the next EQE is not valid then we are done */
	if (FUNC0(lpfc_eqe_valid, eqe) != q->qe_valid)
		return NULL;

	/*
	 * insert barrier for instruction interlock : data from the hardware
	 * must have the valid bit checked before it can be copied and acted
	 * upon. Speculative instructions were allowing a bcopy at the start
	 * of lpfc_sli4_fp_handle_wcqe(), which is called immediately
	 * after our return, to copy data before the valid bit check above
	 * was done. As such, some of the copied data was stale. The barrier
	 * ensures the check is before any data is copied.
	 */
	FUNC2();
	return eqe;
}