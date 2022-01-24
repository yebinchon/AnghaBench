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
struct qman_fq {int state; size_t idx; int /*<<< orphan*/  fqid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  QMAN_FQ_FLAG_DYNAMIC_FQID ; 
 int /*<<< orphan*/  FUNC1 (struct qman_fq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** fq_table ; 
#define  qman_fq_state_oos 129 
#define  qman_fq_state_parked 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct qman_fq *fq)
{
	/*
	 * We don't need to lock the FQ as it is a pre-condition that the FQ be
	 * quiesced. Instead, run some checks.
	 */
	switch (fq->state) {
	case qman_fq_state_parked:
	case qman_fq_state_oos:
		if (FUNC1(fq, QMAN_FQ_FLAG_DYNAMIC_FQID))
			FUNC2(fq->fqid);

		FUNC0(*fq_table[fq->idx]);
		fq_table[fq->idx] = NULL;
		return;
	default:
		break;
	}
	FUNC0(NULL == "qman_free_fq() on unquiesced FQ!");
}