#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  bm; } ;
struct TYPE_7__ {int /*<<< orphan*/  bm; } ;
struct uwb_rsv_move {TYPE_4__ companion_mas; TYPE_3__ final_mas; } ;
struct TYPE_6__ {int /*<<< orphan*/  bm; } ;
struct uwb_rsv {TYPE_2__ mas; struct uwb_rsv_move mv; struct uwb_rc* rc; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;
struct uwb_drp_backoff_win {int can_reserve_extra_mases; } ;
struct uwb_rc {TYPE_1__ uwb_dev; struct uwb_drp_backoff_win bow; } ;
struct uwb_mas_bm {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  UWB_NUM_MAS ; 
 scalar_t__ UWB_RSV_ALLOC_FOUND ; 
 int /*<<< orphan*/  UWB_RSV_STATE_O_MOVE_EXPANDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_rc*,TYPE_4__*) ; 
 scalar_t__ FUNC4 (struct uwb_rsv*,struct uwb_mas_bm*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_rsv*,int /*<<< orphan*/ ) ; 

int FUNC6(struct uwb_rsv *rsv, struct uwb_mas_bm *available)
{
	struct uwb_rc *rc = rsv->rc;
	struct uwb_drp_backoff_win *bow = &rc->bow;
	struct device *dev = &rc->uwb_dev.dev;
	struct uwb_rsv_move *mv;
	int ret = 0;

	if (bow->can_reserve_extra_mases == false)
		return -EBUSY;

	mv = &rsv->mv;

	if (FUNC4(rsv, available, &mv->final_mas) == UWB_RSV_ALLOC_FOUND) {

		if (!FUNC1(rsv->mas.bm, mv->final_mas.bm, UWB_NUM_MAS)) {
			/* We want to move the reservation */
			FUNC0(mv->companion_mas.bm, mv->final_mas.bm, rsv->mas.bm, UWB_NUM_MAS);
			FUNC3(rc, &mv->companion_mas);
			FUNC5(rsv, UWB_RSV_STATE_O_MOVE_EXPANDING);
		}
	} else {
		FUNC2(dev, "new allocation not found\n");
	}

	return ret;
}