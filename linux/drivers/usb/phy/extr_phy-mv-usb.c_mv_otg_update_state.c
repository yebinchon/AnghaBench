
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv_otg_ctrl {int a_clr_err; int a_bus_drop; int id; int a_bus_req; int a_sess_vld; int b_conn; int a_vbus_vld; int a_wait_bcon_timeout; int a_srp_det; int b_sess_vld; } ;
struct TYPE_4__ {TYPE_1__* otg; } ;
struct mv_otg {TYPE_2__ phy; struct mv_otg_ctrl otg_ctrl; } ;
struct TYPE_3__ {int state; } ;


 int A_WAIT_BCON_TIMER ;
 int mv_otg_cancel_timer (struct mv_otg*,int ) ;

__attribute__((used)) static void mv_otg_update_state(struct mv_otg *mvotg)
{
 struct mv_otg_ctrl *otg_ctrl = &mvotg->otg_ctrl;
 int old_state = mvotg->phy.otg->state;

 switch (old_state) {
 case 128:
  mvotg->phy.otg->state = 130;

 case 130:
  if (otg_ctrl->id == 0)
   mvotg->phy.otg->state = 135;
  else if (otg_ctrl->b_sess_vld)
   mvotg->phy.otg->state = 129;
  break;
 case 129:
  if (!otg_ctrl->b_sess_vld || otg_ctrl->id == 0)
   mvotg->phy.otg->state = 130;
  break;
 case 135:
  if (otg_ctrl->id)
   mvotg->phy.otg->state = 130;
  else if (!(otg_ctrl->a_bus_drop) &&
    (otg_ctrl->a_bus_req || otg_ctrl->a_srp_det))
   mvotg->phy.otg->state = 131;
  break;
 case 131:
  if (otg_ctrl->a_vbus_vld)
   mvotg->phy.otg->state = 133;
  break;
 case 133:
  if (otg_ctrl->id || otg_ctrl->a_bus_drop
      || otg_ctrl->a_wait_bcon_timeout) {
   mv_otg_cancel_timer(mvotg, A_WAIT_BCON_TIMER);
   mvotg->otg_ctrl.a_wait_bcon_timeout = 0;
   mvotg->phy.otg->state = 132;
   otg_ctrl->a_bus_req = 0;
  } else if (!otg_ctrl->a_vbus_vld) {
   mv_otg_cancel_timer(mvotg, A_WAIT_BCON_TIMER);
   mvotg->otg_ctrl.a_wait_bcon_timeout = 0;
   mvotg->phy.otg->state = 134;
  } else if (otg_ctrl->b_conn) {
   mv_otg_cancel_timer(mvotg, A_WAIT_BCON_TIMER);
   mvotg->otg_ctrl.a_wait_bcon_timeout = 0;
   mvotg->phy.otg->state = 136;
  }
  break;
 case 136:
  if (otg_ctrl->id || !otg_ctrl->b_conn
      || otg_ctrl->a_bus_drop)
   mvotg->phy.otg->state = 133;
  else if (!otg_ctrl->a_vbus_vld)
   mvotg->phy.otg->state = 134;
  break;
 case 132:
  if (otg_ctrl->id
      || (!otg_ctrl->b_conn && otg_ctrl->a_sess_vld)
      || otg_ctrl->a_bus_req)
   mvotg->phy.otg->state = 135;
  break;
 case 134:
  if (otg_ctrl->id || otg_ctrl->a_clr_err
      || otg_ctrl->a_bus_drop) {
   otg_ctrl->a_clr_err = 0;
   mvotg->phy.otg->state = 132;
  }
  break;
 default:
  break;
 }
}
