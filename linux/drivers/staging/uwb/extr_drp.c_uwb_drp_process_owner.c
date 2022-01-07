
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_rsv {int dummy; } ;
struct uwb_rc_evt_drp {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_mas_bm {int bm; } ;
struct uwb_ie_drp {int dummy; } ;
struct uwb_dev {int last_availability_bm; } ;
typedef enum uwb_drp_reason { ____Placeholder_uwb_drp_reason } uwb_drp_reason ;






 int UWB_NUM_MAS ;
 int UWB_RSV_STATE_NONE ;
 int UWB_RSV_STATE_O_PENDING ;
 int bitmap_complement (int ,int ,int ) ;
 int dev_warn (struct device*,char*,int,int) ;
 int uwb_drp_handle_conflict_rsv (struct uwb_rc*,struct uwb_rsv*,struct uwb_rc_evt_drp*,struct uwb_ie_drp*,struct uwb_mas_bm*) ;
 int uwb_drp_ie_to_bm (struct uwb_mas_bm*,struct uwb_ie_drp*) ;
 int uwb_drp_process_owner_accepted (struct uwb_rsv*,struct uwb_mas_bm*) ;
 int uwb_ie_drp_reason_code (struct uwb_ie_drp*) ;
 int uwb_ie_drp_status (struct uwb_ie_drp*) ;
 int uwb_rsv_set_state (struct uwb_rsv*,int ) ;

__attribute__((used)) static void uwb_drp_process_owner(struct uwb_rc *rc, struct uwb_rsv *rsv,
      struct uwb_dev *src, struct uwb_ie_drp *drp_ie,
      struct uwb_rc_evt_drp *drp_evt)
{
 struct device *dev = &rc->uwb_dev.dev;
 int status;
 enum uwb_drp_reason reason_code;
 struct uwb_mas_bm mas;

 status = uwb_ie_drp_status(drp_ie);
 reason_code = uwb_ie_drp_reason_code(drp_ie);
 uwb_drp_ie_to_bm(&mas, drp_ie);

 if (status) {
  switch (reason_code) {
  case 131:
   uwb_drp_process_owner_accepted(rsv, &mas);
   break;
  default:
   dev_warn(dev, "ignoring invalid DRP IE state (%d/%d)\n",
     reason_code, status);
  }
 } else {
  switch (reason_code) {
  case 128:
   uwb_rsv_set_state(rsv, UWB_RSV_STATE_O_PENDING);
   break;
  case 129:
   uwb_rsv_set_state(rsv, UWB_RSV_STATE_NONE);
   break;
  case 130:

   bitmap_complement(mas.bm, src->last_availability_bm,
       UWB_NUM_MAS);
   uwb_drp_handle_conflict_rsv(rc, rsv, drp_evt, drp_ie, &mas);
   break;
  default:
   dev_warn(dev, "ignoring invalid DRP IE state (%d/%d)\n",
     reason_code, status);
  }
 }
}
