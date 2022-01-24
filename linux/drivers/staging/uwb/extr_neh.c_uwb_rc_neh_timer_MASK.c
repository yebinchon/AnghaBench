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
struct uwb_rc_neh {scalar_t__ context; scalar_t__ completed; struct uwb_rc* rc; } ;
struct uwb_rc {int /*<<< orphan*/  neh_lock; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct uwb_rc*,struct uwb_rc_neh*) ; 
 struct uwb_rc_neh* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct uwb_rc_neh* neh ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rc_neh*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct uwb_rc_neh *neh = FUNC1(neh, t, timer);
	struct uwb_rc *rc = neh->rc;
	unsigned long flags;

	FUNC2(&rc->neh_lock, flags);
	if (neh->completed) {
		FUNC3(&rc->neh_lock, flags);
		return;
	}
	if (neh->context)
		FUNC0(rc, neh);
	else
		neh = NULL;
	FUNC3(&rc->neh_lock, flags);

	if (neh)
		FUNC4(neh, NULL, -ETIMEDOUT);
}