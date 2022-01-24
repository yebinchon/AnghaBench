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
struct timer_list {int dummy; } ;
struct gsm_mux {scalar_t__ cretries; int t2; int /*<<< orphan*/  control_lock; int /*<<< orphan*/  t2_timer; int /*<<< orphan*/  event; struct gsm_control* pending_cmd; } ;
struct gsm_control {int done; int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int HZ ; 
 struct gsm_mux* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct gsm_mux* gsm ; 
 int /*<<< orphan*/  FUNC1 (struct gsm_mux*,struct gsm_control*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  t2_timer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct gsm_mux *gsm = FUNC0(gsm, t, t2_timer);
	struct gsm_control *ctrl;
	unsigned long flags;
	FUNC3(&gsm->control_lock, flags);
	ctrl = gsm->pending_cmd;
	if (ctrl) {
		gsm->cretries--;
		if (gsm->cretries == 0) {
			gsm->pending_cmd = NULL;
			ctrl->error = -ETIMEDOUT;
			ctrl->done = 1;
			FUNC4(&gsm->control_lock, flags);
			FUNC5(&gsm->event);
			return;
		}
		FUNC1(gsm, ctrl);
		FUNC2(&gsm->t2_timer, jiffies + gsm->t2 * HZ / 100);
	}
	FUNC4(&gsm->control_lock, flags);
}