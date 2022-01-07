
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct otg_fsm {int state_changed; int id; int lock; int a_clr_err; int a_bus_drop; int a_wait_vfall_tmout; int a_vbus_vld; int b_bus_suspend; int a_bidl_adis_tmout; int a_aidl_bdis_tmout; int b_bus_resume; int a_bus_req; TYPE_3__* otg; int b_conn; int a_suspend_req_inf; int a_wait_bcon_tmout; int a_wait_vrise_tmout; int power_up; int adp_change; int a_srp_det; int test_device; int a_conn; int b_bus_req; int b_sess_vld; int b_ase0_brst_tmout; int a_bus_resume; int a_bus_suspend; int b_srp_done; int b_se0_srp; int b_ssend_srp; } ;
typedef enum usb_otg_state { ____Placeholder_usb_otg_state } usb_otg_state ;
struct TYPE_6__ {int state; TYPE_2__* host; TYPE_1__* gadget; } ;
struct TYPE_5__ {int b_hnp_enable; } ;
struct TYPE_4__ {int b_hnp_enable; } ;
 int VDBG (char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int otg_set_state (struct otg_fsm*,int const) ;

int otg_statemachine(struct otg_fsm *fsm)
{
 enum usb_otg_state state;

 mutex_lock(&fsm->lock);

 state = fsm->otg->state;
 fsm->state_changed = 0;


 switch (state) {
 case 128:
  VDBG("fsm->id = %d\n", fsm->id);
  if (fsm->id)
   otg_set_state(fsm, 132);
  else
   otg_set_state(fsm, 140);
  break;
 case 132:
  if (!fsm->id)
   otg_set_state(fsm, 140);
  else if (fsm->b_sess_vld && fsm->otg->gadget)
   otg_set_state(fsm, 131);
  else if ((fsm->b_bus_req || fsm->adp_change || fsm->power_up) &&
    fsm->b_ssend_srp && fsm->b_se0_srp)
   otg_set_state(fsm, 130);
  break;
 case 130:
  if (!fsm->id || fsm->b_srp_done)
   otg_set_state(fsm, 132);
  break;
 case 131:
  if (!fsm->id || !fsm->b_sess_vld)
   otg_set_state(fsm, 132);
  else if (fsm->b_bus_req && fsm->otg->
    gadget->b_hnp_enable && fsm->a_bus_suspend)
   otg_set_state(fsm, 129);
  break;
 case 129:
  if (fsm->a_conn)
   otg_set_state(fsm, 133);
  else if (!fsm->id || !fsm->b_sess_vld)
   otg_set_state(fsm, 132);
  else if (fsm->a_bus_resume || fsm->b_ase0_brst_tmout) {
   fsm->b_ase0_brst_tmout = 0;
   otg_set_state(fsm, 131);
  }
  break;
 case 133:
  if (!fsm->id || !fsm->b_sess_vld)
   otg_set_state(fsm, 132);
  else if (!fsm->b_bus_req || !fsm->a_conn || fsm->test_device)
   otg_set_state(fsm, 131);
  break;
 case 140:
  if (fsm->id)
   otg_set_state(fsm, 132);
  else if (!fsm->a_bus_drop && (fsm->a_bus_req ||
     fsm->a_srp_det || fsm->adp_change || fsm->power_up))
   otg_set_state(fsm, 134);
  break;
 case 134:
  if (fsm->a_vbus_vld)
   otg_set_state(fsm, 136);
  else if (fsm->id || fsm->a_bus_drop ||
    fsm->a_wait_vrise_tmout)
   otg_set_state(fsm, 135);
  break;
 case 136:
  if (!fsm->a_vbus_vld)
   otg_set_state(fsm, 137);
  else if (fsm->b_conn)
   otg_set_state(fsm, 141);
  else if (fsm->id || fsm->a_bus_drop || fsm->a_wait_bcon_tmout)
   otg_set_state(fsm, 135);
  break;
 case 141:
  if (fsm->id || fsm->a_bus_drop)
   otg_set_state(fsm, 135);
  else if ((!fsm->a_bus_req || fsm->a_suspend_req_inf) &&
    fsm->otg->host->b_hnp_enable)
   otg_set_state(fsm, 138);
  else if (!fsm->b_conn)
   otg_set_state(fsm, 136);
  else if (!fsm->a_vbus_vld)
   otg_set_state(fsm, 137);
  break;
 case 138:
  if (!fsm->b_conn && fsm->otg->host->b_hnp_enable)
   otg_set_state(fsm, 139);
  else if (!fsm->b_conn && !fsm->otg->host->b_hnp_enable)
   otg_set_state(fsm, 136);
  else if (fsm->a_bus_req || fsm->b_bus_resume)
   otg_set_state(fsm, 141);
  else if (fsm->id || fsm->a_bus_drop || fsm->a_aidl_bdis_tmout)
   otg_set_state(fsm, 135);
  else if (!fsm->a_vbus_vld)
   otg_set_state(fsm, 137);
  break;
 case 139:
  if (fsm->id || fsm->a_bus_drop)
   otg_set_state(fsm, 135);
  else if (fsm->a_bidl_adis_tmout || fsm->b_bus_suspend)
   otg_set_state(fsm, 136);
  else if (!fsm->a_vbus_vld)
   otg_set_state(fsm, 137);
  break;
 case 135:
  if (fsm->a_wait_vfall_tmout)
   otg_set_state(fsm, 140);
  break;
 case 137:
  if (fsm->id || fsm->a_bus_drop || fsm->a_clr_err)
   otg_set_state(fsm, 135);
  break;
 default:
  break;
 }
 mutex_unlock(&fsm->lock);

 VDBG("quit statemachine, changed = %d\n", fsm->state_changed);
 return fsm->state_changed;
}
