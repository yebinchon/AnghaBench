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
struct fc_frame {int dummy; } ;
struct fc_exch {scalar_t__ resp_active; void (* resp ) (struct fc_seq*,struct fc_frame*,void*) ;int /*<<< orphan*/  resp_wq; int /*<<< orphan*/  ex_lock; int /*<<< orphan*/ * resp_task; void* arg; } ;

/* Variables and functions */
 int /*<<< orphan*/ * current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct fc_exch *ep, struct fc_seq *sp,
			   struct fc_frame *fp)
{
	void (*resp)(struct fc_seq *, struct fc_frame *fp, void *arg);
	void *arg;
	bool res = false;

	FUNC0(&ep->ex_lock);
	ep->resp_active++;
	if (ep->resp_task != current)
		ep->resp_task = !ep->resp_task ? current : NULL;
	resp = ep->resp;
	arg = ep->arg;
	FUNC1(&ep->ex_lock);

	if (resp) {
		resp(sp, fp, arg);
		res = true;
	}

	FUNC0(&ep->ex_lock);
	if (--ep->resp_active == 0)
		ep->resp_task = NULL;
	FUNC1(&ep->ex_lock);

	if (ep->resp_active == 0)
		FUNC2(&ep->resp_wq);

	return res;
}