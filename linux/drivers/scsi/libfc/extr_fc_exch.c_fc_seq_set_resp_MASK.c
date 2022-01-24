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
struct fc_seq {int dummy; } ;
struct fc_exch {scalar_t__ resp_task; void (* resp ) (struct fc_seq*,struct fc_frame*,void*) ;int /*<<< orphan*/  ex_lock; void* arg; int /*<<< orphan*/  resp_wq; scalar_t__ resp_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ current ; 
 struct fc_exch* FUNC1 (struct fc_seq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

void FUNC7(struct fc_seq *sp,
		     void (*resp)(struct fc_seq *, struct fc_frame *, void *),
		     void *arg)
{
	struct fc_exch *ep = FUNC1(sp);
	FUNC0(wait);

	FUNC5(&ep->ex_lock);
	while (ep->resp_active && ep->resp_task != current) {
		FUNC3(&ep->resp_wq, &wait, TASK_UNINTERRUPTIBLE);
		FUNC6(&ep->ex_lock);

		FUNC4();

		FUNC5(&ep->ex_lock);
	}
	FUNC2(&ep->resp_wq, &wait);
	ep->resp = resp;
	ep->arg = arg;
	FUNC6(&ep->ex_lock);
}