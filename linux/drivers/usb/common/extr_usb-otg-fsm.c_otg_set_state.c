
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct otg_fsm {int state_changed; TYPE_1__* otg; int a_suspend_req_inf; int a_bus_req; int a_bus_suspend; } ;
typedef enum usb_otg_state { ____Placeholder_usb_otg_state } usb_otg_state ;
struct TYPE_4__ {int otg_port; } ;
struct TYPE_3__ {int state; TYPE_2__* host; } ;


 int A_AIDL_BDIS ;
 int A_BIDL_ADIS ;
 int A_WAIT_BCON ;
 int A_WAIT_ENUM ;
 int A_WAIT_VFALL ;
 int A_WAIT_VRISE ;
 int B_ASE0_BRST ;
 int B_SE0_SRP ;
 int B_SRP_FAIL ;
 int PROTO_GADGET ;
 int PROTO_HOST ;
 int PROTO_UNDEF ;
 int VDBG (char*,int ) ;
 int otg_add_timer (struct otg_fsm*,int ) ;
 int otg_chrg_vbus (struct otg_fsm*,int ) ;
 int otg_drv_vbus (struct otg_fsm*,int) ;
 int otg_leave_state (struct otg_fsm*,int) ;
 int otg_loc_conn (struct otg_fsm*,int) ;
 int otg_loc_sof (struct otg_fsm*,int) ;
 int otg_set_protocol (struct otg_fsm*,int ) ;
 int otg_start_adp_prb (struct otg_fsm*) ;
 int otg_start_adp_sns (struct otg_fsm*) ;
 int otg_start_hnp_polling (struct otg_fsm*) ;
 int otg_start_pulse (struct otg_fsm*) ;
 int usb_bus_start_enum (TYPE_2__*,int ) ;
 int usb_otg_state_string (int) ;

__attribute__((used)) static int otg_set_state(struct otg_fsm *fsm, enum usb_otg_state new_state)
{
 if (fsm->otg->state == new_state)
  return 0;
 VDBG("Set state: %s\n", usb_otg_state_string(new_state));
 otg_leave_state(fsm, fsm->otg->state);
 switch (new_state) {
 case 131:
  otg_drv_vbus(fsm, 0);
  otg_chrg_vbus(fsm, 0);
  otg_loc_conn(fsm, 0);
  otg_loc_sof(fsm, 0);




  otg_start_adp_sns(fsm);
  otg_set_protocol(fsm, PROTO_UNDEF);
  otg_add_timer(fsm, B_SE0_SRP);
  break;
 case 129:
  otg_start_pulse(fsm);
  otg_loc_sof(fsm, 0);
  otg_set_protocol(fsm, PROTO_UNDEF);
  otg_add_timer(fsm, B_SRP_FAIL);
  break;
 case 130:
  otg_chrg_vbus(fsm, 0);
  otg_loc_sof(fsm, 0);
  otg_set_protocol(fsm, PROTO_GADGET);
  otg_loc_conn(fsm, 1);
  break;
 case 128:
  otg_chrg_vbus(fsm, 0);
  otg_loc_conn(fsm, 0);
  otg_loc_sof(fsm, 0);
  otg_set_protocol(fsm, PROTO_HOST);
  otg_add_timer(fsm, B_ASE0_BRST);
  fsm->a_bus_suspend = 0;
  break;
 case 132:
  otg_chrg_vbus(fsm, 0);
  otg_loc_conn(fsm, 0);
  otg_loc_sof(fsm, 1);
  otg_set_protocol(fsm, PROTO_HOST);
  usb_bus_start_enum(fsm->otg->host,
    fsm->otg->host->otg_port);
  otg_start_hnp_polling(fsm);
  break;
 case 139:
  otg_drv_vbus(fsm, 0);
  otg_chrg_vbus(fsm, 0);
  otg_loc_conn(fsm, 0);
  otg_loc_sof(fsm, 0);
  otg_start_adp_prb(fsm);
  otg_set_protocol(fsm, PROTO_HOST);
  break;
 case 133:
  otg_drv_vbus(fsm, 1);
  otg_loc_conn(fsm, 0);
  otg_loc_sof(fsm, 0);
  otg_set_protocol(fsm, PROTO_HOST);
  otg_add_timer(fsm, A_WAIT_VRISE);
  break;
 case 135:
  otg_drv_vbus(fsm, 1);
  otg_loc_conn(fsm, 0);
  otg_loc_sof(fsm, 0);
  otg_set_protocol(fsm, PROTO_HOST);
  otg_add_timer(fsm, A_WAIT_BCON);
  break;
 case 140:
  otg_drv_vbus(fsm, 1);
  otg_loc_conn(fsm, 0);
  otg_loc_sof(fsm, 1);
  otg_set_protocol(fsm, PROTO_HOST);




  if (!fsm->a_bus_req || fsm->a_suspend_req_inf)
   otg_add_timer(fsm, A_WAIT_ENUM);
  otg_start_hnp_polling(fsm);
  break;
 case 137:
  otg_drv_vbus(fsm, 1);
  otg_loc_conn(fsm, 0);
  otg_loc_sof(fsm, 0);
  otg_set_protocol(fsm, PROTO_HOST);
  otg_add_timer(fsm, A_AIDL_BDIS);

  break;
 case 138:
  otg_loc_sof(fsm, 0);
  otg_set_protocol(fsm, PROTO_GADGET);
  otg_drv_vbus(fsm, 1);
  otg_loc_conn(fsm, 1);
  otg_add_timer(fsm, A_BIDL_ADIS);
  break;
 case 134:
  otg_drv_vbus(fsm, 0);
  otg_loc_conn(fsm, 0);
  otg_loc_sof(fsm, 0);
  otg_set_protocol(fsm, PROTO_HOST);
  otg_add_timer(fsm, A_WAIT_VFALL);
  break;
 case 136:
  otg_drv_vbus(fsm, 0);
  otg_loc_conn(fsm, 0);
  otg_loc_sof(fsm, 0);
  otg_set_protocol(fsm, PROTO_UNDEF);
  break;
 default:
  break;
 }

 fsm->otg->state = new_state;
 fsm->state_changed = 1;
 return 0;
}
