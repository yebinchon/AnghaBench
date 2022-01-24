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
struct list_head {int dummy; } ;
struct bfa_timer_s {scalar_t__ timeout; int /*<<< orphan*/  arg; int /*<<< orphan*/  (* timercb ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  qe; } ;
struct bfa_timer_mod_s {struct list_head timer_q; } ;

/* Variables and functions */
 scalar_t__ BFA_TIMER_FREQ ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*,struct bfa_timer_s**) ; 
 struct list_head* FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(struct bfa_timer_mod_s *mod)
{
	struct list_head *qh = &mod->timer_q;
	struct list_head *qe, *qe_next;
	struct bfa_timer_s *elem;
	struct list_head timedout_q;

	FUNC0(&timedout_q);

	qe = FUNC2(qh);

	while (qe != qh) {
		qe_next = FUNC2(qe);

		elem = (struct bfa_timer_s *) qe;
		if (elem->timeout <= BFA_TIMER_FREQ) {
			elem->timeout = 0;
			FUNC4(&elem->qe);
			FUNC3(&elem->qe, &timedout_q);
		} else {
			elem->timeout -= BFA_TIMER_FREQ;
		}

		qe = qe_next;	/* go to next elem */
	}

	/*
	 * Pop all the timeout entries
	 */
	while (!FUNC5(&timedout_q)) {
		FUNC1(&timedout_q, &elem);
		elem->timercb(elem->arg);
	}
}