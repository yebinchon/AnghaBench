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
struct TYPE_2__ {int fqs; } ;
union qm_mr_entry {TYPE_1__ fq; } ;
typedef  int u8 ;
struct qman_portal {int dummy; } ;
struct qman_fq {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  QMAN_FQ_STATE_CHANGING ; 
 int /*<<< orphan*/  QMAN_FQ_STATE_NE ; 
 int /*<<< orphan*/  QMAN_FQ_STATE_ORL ; 
 int QM_MR_FQS_NOTEMPTY ; 
 int QM_MR_FQS_ORLPRESENT ; 
#define  QM_MR_VERB_FQPN 130 
#define  QM_MR_VERB_FQRL 129 
#define  QM_MR_VERB_FQRN 128 
 int /*<<< orphan*/  FUNC1 (struct qman_fq*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qman_fq*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qman_fq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qman_fq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qman_fq_state_parked ; 
 int /*<<< orphan*/  qman_fq_state_retired ; 
 int /*<<< orphan*/  qman_fq_state_sched ; 

__attribute__((used)) static inline void FUNC5(struct qman_portal *p, struct qman_fq *fq,
				   const union qm_mr_entry *msg, u8 verb)
{
	switch (verb) {
	case QM_MR_VERB_FQRL:
		FUNC0(FUNC3(fq, QMAN_FQ_STATE_ORL));
		FUNC1(fq, QMAN_FQ_STATE_ORL);
		break;
	case QM_MR_VERB_FQRN:
		FUNC0(fq->state == qman_fq_state_parked ||
			    fq->state == qman_fq_state_sched);
		FUNC0(FUNC3(fq, QMAN_FQ_STATE_CHANGING));
		FUNC1(fq, QMAN_FQ_STATE_CHANGING);
		if (msg->fq.fqs & QM_MR_FQS_NOTEMPTY)
			FUNC4(fq, QMAN_FQ_STATE_NE);
		if (msg->fq.fqs & QM_MR_FQS_ORLPRESENT)
			FUNC4(fq, QMAN_FQ_STATE_ORL);
		fq->state = qman_fq_state_retired;
		break;
	case QM_MR_VERB_FQPN:
		FUNC0(fq->state == qman_fq_state_sched);
		FUNC0(FUNC2(fq, QMAN_FQ_STATE_CHANGING));
		fq->state = qman_fq_state_parked;
	}
}