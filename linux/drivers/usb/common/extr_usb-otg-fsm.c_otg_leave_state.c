
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct otg_fsm {int a_wait_vfall_tmout; TYPE_2__* otg; int a_bidl_adis_tmout; int a_suspend_req_inf; int a_aidl_bdis_tmout; int a_wait_bcon_tmout; int a_wait_vrise_tmout; int adp_prb; int b_ase0_brst_tmout; int b_srp_done; int data_pulse; int adp_sns; int b_se0_srp; } ;
typedef enum usb_otg_state { ____Placeholder_usb_otg_state } usb_otg_state ;
struct TYPE_4__ {TYPE_1__* gadget; } ;
struct TYPE_3__ {int host_request_flag; } ;


 int A_AIDL_BDIS ;
 int A_BIDL_ADIS ;
 int A_WAIT_BCON ;
 int A_WAIT_ENUM ;
 int A_WAIT_VFALL ;
 int A_WAIT_VRISE ;
 int B_ASE0_BRST ;
 int B_SE0_SRP ;
 int otg_del_timer (struct otg_fsm*,int ) ;

__attribute__((used)) static void otg_leave_state(struct otg_fsm *fsm, enum usb_otg_state old_state)
{
 switch (old_state) {
 case 131:
  otg_del_timer(fsm, B_SE0_SRP);
  fsm->b_se0_srp = 0;
  fsm->adp_sns = 0;
  fsm->adp_prb = 0;
  break;
 case 129:
  fsm->data_pulse = 0;
  fsm->b_srp_done = 0;
  break;
 case 130:
  if (fsm->otg->gadget)
   fsm->otg->gadget->host_request_flag = 0;
  break;
 case 128:
  otg_del_timer(fsm, B_ASE0_BRST);
  fsm->b_ase0_brst_tmout = 0;
  break;
 case 132:
  break;
 case 139:
  fsm->adp_prb = 0;
  break;
 case 133:
  otg_del_timer(fsm, A_WAIT_VRISE);
  fsm->a_wait_vrise_tmout = 0;
  break;
 case 135:
  otg_del_timer(fsm, A_WAIT_BCON);
  fsm->a_wait_bcon_tmout = 0;
  break;
 case 140:
  otg_del_timer(fsm, A_WAIT_ENUM);
  break;
 case 137:
  otg_del_timer(fsm, A_AIDL_BDIS);
  fsm->a_aidl_bdis_tmout = 0;
  fsm->a_suspend_req_inf = 0;
  break;
 case 138:
  otg_del_timer(fsm, A_BIDL_ADIS);
  fsm->a_bidl_adis_tmout = 0;
  if (fsm->otg->gadget)
   fsm->otg->gadget->host_request_flag = 0;
  break;
 case 134:
  otg_del_timer(fsm, A_WAIT_VFALL);
  fsm->a_wait_vfall_tmout = 0;
  otg_del_timer(fsm, A_WAIT_VRISE);
  break;
 case 136:
  break;
 default:
  break;
 }
}
