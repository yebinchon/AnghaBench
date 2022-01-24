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
struct llt_ndlc {int t2_active; int t1_active; int /*<<< orphan*/  send_q; int /*<<< orphan*/  rcv_q; int /*<<< orphan*/  t2_timer; int /*<<< orphan*/  t1_timer; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct llt_ndlc *ndlc)
{
	FUNC2(ndlc->ndev);

	/* cancel timers */
	FUNC0(&ndlc->t1_timer);
	FUNC0(&ndlc->t2_timer);
	ndlc->t2_active = false;
	ndlc->t1_active = false;

	FUNC1(&ndlc->rcv_q);
	FUNC1(&ndlc->send_q);
}