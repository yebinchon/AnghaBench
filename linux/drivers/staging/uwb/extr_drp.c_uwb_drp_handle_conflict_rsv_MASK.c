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
struct TYPE_3__ {int /*<<< orphan*/  bm; } ;
struct uwb_rsv_move {TYPE_1__ companion_mas; } ;
struct TYPE_4__ {int /*<<< orphan*/  bm; } ;
struct uwb_rsv {TYPE_2__ mas; struct uwb_rsv_move mv; } ;
struct uwb_rc_evt_drp {int /*<<< orphan*/  beacon_slot_number; } ;
struct uwb_rc {int dummy; } ;
struct uwb_mas_bm {int /*<<< orphan*/  bm; } ;
struct uwb_ie_drp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UWB_NUM_MAS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uwb_ie_drp*,int /*<<< orphan*/ ,struct uwb_rsv*,int,struct uwb_mas_bm*) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_ie_drp*,int /*<<< orphan*/ ,struct uwb_rsv*,struct uwb_mas_bm*) ; 
 scalar_t__ FUNC3 (struct uwb_rsv*) ; 

__attribute__((used)) static void FUNC4(struct uwb_rc *rc, struct uwb_rsv *rsv,
					struct uwb_rc_evt_drp *drp_evt,
					struct uwb_ie_drp *drp_ie,
					struct uwb_mas_bm *conflicting_mas)
{
	struct uwb_rsv_move *mv;

	/* check if the conflicting reservation has two drp_ies */
	if (FUNC3(rsv)) {
		mv = &rsv->mv;
		if (FUNC0(rsv->mas.bm, conflicting_mas->bm,
								UWB_NUM_MAS)) {
			FUNC1(drp_ie,
						drp_evt->beacon_slot_number,
						rsv, false, conflicting_mas);
		} else {
			if (FUNC0(mv->companion_mas.bm,
					conflicting_mas->bm, UWB_NUM_MAS)) {
				FUNC1(
					drp_ie, drp_evt->beacon_slot_number,
					rsv, true, conflicting_mas);
			}
		}
	} else if (FUNC0(rsv->mas.bm, conflicting_mas->bm,
							UWB_NUM_MAS)) {
		FUNC2(drp_ie, drp_evt->beacon_slot_number,
					rsv, conflicting_mas);
	}
}