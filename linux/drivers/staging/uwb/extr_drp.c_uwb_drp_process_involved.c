
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {scalar_t__ state; } ;
struct uwb_rc_evt_drp {int dummy; } ;
struct uwb_rc {int dummy; } ;
struct uwb_ie_drp {int dummy; } ;
struct uwb_dev {int dummy; } ;


 scalar_t__ UWB_RSV_STATE_NONE ;
 int uwb_drp_process_owner (struct uwb_rc*,struct uwb_rsv*,struct uwb_dev*,struct uwb_ie_drp*,struct uwb_rc_evt_drp*) ;
 int uwb_drp_process_target (struct uwb_rc*,struct uwb_rsv*,struct uwb_ie_drp*,struct uwb_rc_evt_drp*) ;
 scalar_t__ uwb_ie_drp_owner (struct uwb_ie_drp*) ;
 struct uwb_rsv* uwb_rsv_find (struct uwb_rc*,struct uwb_dev*,struct uwb_ie_drp*) ;
 int uwb_rsv_set_state (struct uwb_rsv*,scalar_t__) ;

__attribute__((used)) static void uwb_drp_process_involved(struct uwb_rc *rc, struct uwb_dev *src,
         struct uwb_rc_evt_drp *drp_evt,
         struct uwb_ie_drp *drp_ie)
{
 struct uwb_rsv *rsv;

 rsv = uwb_rsv_find(rc, src, drp_ie);
 if (!rsv) {





  return;
 }





 if (rsv->state == UWB_RSV_STATE_NONE) {
  uwb_rsv_set_state(rsv, UWB_RSV_STATE_NONE);
  return;
 }

 if (uwb_ie_drp_owner(drp_ie))
  uwb_drp_process_target(rc, rsv, drp_ie, drp_evt);
 else
  uwb_drp_process_owner(rc, rsv, src, drp_ie, drp_evt);

}
