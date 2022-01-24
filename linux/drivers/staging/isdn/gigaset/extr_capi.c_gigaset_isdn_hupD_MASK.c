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
struct gigaset_capi_appl {struct gigaset_capi_appl* bcnext; } ;
struct bc_state {int /*<<< orphan*/  aplock; int /*<<< orphan*/  apconnstate; struct gigaset_capi_appl* ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  APCONN_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct bc_state*,struct gigaset_capi_appl*) ; 
 int /*<<< orphan*/  FUNC1 (struct bc_state*,struct gigaset_capi_appl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct bc_state *bcs)
{
	struct gigaset_capi_appl *ap;
	unsigned long flags;

	/*
	 * ToDo: pass on reason code reported by device
	 * (requires ev-layer state machine extension to collect
	 * ZCAU device reply)
	 */
	FUNC2(&bcs->aplock, flags);
	while (bcs->ap != NULL) {
		ap = bcs->ap;
		bcs->ap = ap->bcnext;
		FUNC3(&bcs->aplock, flags);
		FUNC0(bcs, ap);
		FUNC1(bcs, ap, 0);
		FUNC2(&bcs->aplock, flags);
	}
	bcs->apconnstate = APCONN_NONE;
	FUNC3(&bcs->aplock, flags);
}