
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bm; } ;
struct uwb_rsv_move {TYPE_2__ companion_mas; } ;
struct TYPE_3__ {int bm; } ;
struct uwb_rsv {scalar_t__ state; TYPE_1__ mas; struct uwb_rsv_move mv; } ;
struct uwb_rc_evt_drp {int dummy; } ;
struct uwb_rc {int dummy; } ;
struct uwb_mas_bm {int bm; } ;
struct uwb_ie_drp {int dummy; } ;


 int EBUSY ;
 int UWB_NUM_MAS ;
 scalar_t__ UWB_RSV_STATE_T_ACCEPTED ;
 scalar_t__ UWB_RSV_STATE_T_CONFLICT ;
 scalar_t__ UWB_RSV_STATE_T_EXPANDING_ACCEPTED ;
 int bitmap_copy (int ,int ,int ) ;
 int bitmap_equal (int ,int ,int ) ;
 int uwb_drp_avail_reserve_pending (struct uwb_rc*,struct uwb_mas_bm*) ;
 int uwb_drp_handle_all_conflict_rsv (struct uwb_rc*,struct uwb_rc_evt_drp*,struct uwb_ie_drp*,struct uwb_mas_bm*) ;
 int uwb_ie_drp_status (struct uwb_ie_drp*) ;
 int uwb_rsv_set_state (struct uwb_rsv*,scalar_t__) ;

__attribute__((used)) static void uwb_drp_process_target_accepted(struct uwb_rc *rc,
 struct uwb_rsv *rsv, struct uwb_rc_evt_drp *drp_evt,
 struct uwb_ie_drp *drp_ie, struct uwb_mas_bm *mas)
{
 struct uwb_rsv_move *mv = &rsv->mv;
 int status;

 status = uwb_ie_drp_status(drp_ie);

 if (rsv->state == UWB_RSV_STATE_T_CONFLICT) {
  uwb_rsv_set_state(rsv, UWB_RSV_STATE_T_CONFLICT);
  return;
 }

 if (rsv->state == UWB_RSV_STATE_T_EXPANDING_ACCEPTED) {

  if (!bitmap_equal(rsv->mas.bm, mas->bm, UWB_NUM_MAS)) {

   uwb_rsv_set_state(rsv,
    UWB_RSV_STATE_T_EXPANDING_ACCEPTED);
  }
 } else {
  if (!bitmap_equal(rsv->mas.bm, mas->bm, UWB_NUM_MAS)) {
   if (uwb_drp_avail_reserve_pending(rc, mas) == -EBUSY) {





    uwb_drp_handle_all_conflict_rsv(rc, drp_evt,
      drp_ie, mas);
   } else {

    bitmap_copy(mv->companion_mas.bm, mas->bm,
        UWB_NUM_MAS);
    uwb_rsv_set_state(rsv,
     UWB_RSV_STATE_T_EXPANDING_ACCEPTED);
   }
  } else {
   if (status) {
    uwb_rsv_set_state(rsv,
      UWB_RSV_STATE_T_ACCEPTED);
   }
  }

 }
}
