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
struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;
struct qm_dqrr_entry {int stat; int /*<<< orphan*/  fd; } ;
typedef  enum qman_cb_dqrr_result { ____Placeholder_qman_cb_dqrr_result } qman_cb_dqrr_result ;

/* Variables and functions */
 int QM_DQRR_STAT_UNSCHEDULED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fd ; 
 int /*<<< orphan*/  fd_dq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int qman_cb_dqrr_consume ; 
 int sdqcr_complete ; 
 int /*<<< orphan*/  waitqueue ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum qman_cb_dqrr_result FUNC5(struct qman_portal *p,
					struct qman_fq *fq,
					const struct qm_dqrr_entry *dq)
{
	if (FUNC0(FUNC2(&fd_dq, &dq->fd))) {
		FUNC3("BADNESS: dequeued frame doesn't match;\n");
		return qman_cb_dqrr_consume;
	}
	FUNC1(&fd_dq);
	if (!(dq->stat & QM_DQRR_STAT_UNSCHEDULED) && !FUNC2(&fd_dq, &fd)) {
		sdqcr_complete = 1;
		FUNC4(&waitqueue);
	}
	return qman_cb_dqrr_consume;
}