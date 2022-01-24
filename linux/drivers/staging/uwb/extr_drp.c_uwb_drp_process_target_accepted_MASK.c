#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bm; } ;
struct uwb_rsv_move {TYPE_2__ companion_mas; } ;
struct TYPE_3__ {int /*<<< orphan*/  bm; } ;
struct uwb_rsv {scalar_t__ state; TYPE_1__ mas; struct uwb_rsv_move mv; } ;
struct uwb_rc_evt_drp {int dummy; } ;
struct uwb_rc {int dummy; } ;
struct uwb_mas_bm {int /*<<< orphan*/  bm; } ;
struct uwb_ie_drp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  UWB_NUM_MAS ; 
 scalar_t__ UWB_RSV_STATE_T_ACCEPTED ; 
 scalar_t__ UWB_RSV_STATE_T_CONFLICT ; 
 scalar_t__ UWB_RSV_STATE_T_EXPANDING_ACCEPTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_rc*,struct uwb_mas_bm*) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_rc*,struct uwb_rc_evt_drp*,struct uwb_ie_drp*,struct uwb_mas_bm*) ; 
 int FUNC4 (struct uwb_ie_drp*) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_rsv*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct uwb_rc *rc,
	struct uwb_rsv *rsv, struct uwb_rc_evt_drp *drp_evt,
	struct uwb_ie_drp *drp_ie, struct uwb_mas_bm *mas)
{
	struct uwb_rsv_move *mv = &rsv->mv;
	int status;

	status = FUNC4(drp_ie);

	if (rsv->state == UWB_RSV_STATE_T_CONFLICT) {
		FUNC5(rsv, UWB_RSV_STATE_T_CONFLICT);
		return;
	}

	if (rsv->state == UWB_RSV_STATE_T_EXPANDING_ACCEPTED) {
		/* drp_ie is companion */
		if (!FUNC1(rsv->mas.bm, mas->bm, UWB_NUM_MAS)) {
			/* stroke companion */
			FUNC5(rsv,
				UWB_RSV_STATE_T_EXPANDING_ACCEPTED);
		}
	} else {
		if (!FUNC1(rsv->mas.bm, mas->bm, UWB_NUM_MAS)) {
			if (FUNC2(rc, mas) == -EBUSY) {
				/* FIXME: there is a conflict, find
				 * the conflicting reservations and
				 * take a sensible action. Consider
				 * that in drp_ie there is the
				 * "neighbour" */
				FUNC3(rc, drp_evt,
						drp_ie, mas);
			} else {
				/* accept the extra reservation */
				FUNC0(mv->companion_mas.bm, mas->bm,
								UWB_NUM_MAS);
				FUNC5(rsv,
					UWB_RSV_STATE_T_EXPANDING_ACCEPTED);
			}
		} else {
			if (status) {
				FUNC5(rsv,
						UWB_RSV_STATE_T_ACCEPTED);
			}
		}

	}
}