
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct otg_fsm {int b_conn; int a_bus_req; int b_sess_vld; int a_bus_suspend; int a_conn; int b_bus_suspend; int b_bus_req; TYPE_1__* otg; } ;
struct TYPE_4__ {int is_a_peripheral; } ;
struct ci_hdrc {TYPE_2__ gadget; int driver; struct otg_fsm fsm; } ;
struct TYPE_3__ {int state; } ;


 int A_BIDL_ADIS ;
 int B_AIDL_BDIS ;
 int OP_PORTSC ;
 int OTGSC_BSV ;
 int PORTSC_CCS ;
 int USBi_PCI ;
 int USBi_SLI ;
 int USBi_URI ;
 int ci_otg_add_timer (struct ci_hdrc*,int ) ;
 int ci_otg_del_timer (struct ci_hdrc*,int ) ;
 int ci_otg_queue_work (struct ci_hdrc*) ;
 int hw_read (struct ci_hdrc*,int ,int ) ;
 int hw_read_intr_status (struct ci_hdrc*) ;
 int hw_read_otgsc (struct ci_hdrc*,int ) ;

__attribute__((used)) static void ci_otg_fsm_event(struct ci_hdrc *ci)
{
 u32 intr_sts, otg_bsess_vld, port_conn;
 struct otg_fsm *fsm = &ci->fsm;

 intr_sts = hw_read_intr_status(ci);
 otg_bsess_vld = hw_read_otgsc(ci, OTGSC_BSV);
 port_conn = hw_read(ci, OP_PORTSC, PORTSC_CCS);

 switch (ci->fsm.otg->state) {
 case 132:
  if (port_conn) {
   fsm->b_conn = 1;
   fsm->a_bus_req = 1;
   ci_otg_queue_work(ci);
  }
  break;
 case 130:
  if (otg_bsess_vld && (intr_sts & USBi_PCI) && port_conn) {
   fsm->b_sess_vld = 1;
   ci_otg_queue_work(ci);
  }
  break;
 case 129:
  if ((intr_sts & USBi_SLI) && port_conn && otg_bsess_vld) {
   ci_otg_add_timer(ci, B_AIDL_BDIS);
  } else if (intr_sts & USBi_PCI) {
   ci_otg_del_timer(ci, B_AIDL_BDIS);
   if (fsm->a_bus_suspend == 1)
    fsm->a_bus_suspend = 0;
  }
  break;
 case 131:
  if ((intr_sts & USBi_PCI) && !port_conn) {
   fsm->a_conn = 0;
   fsm->b_bus_req = 0;
   ci_otg_queue_work(ci);
  }
  break;
 case 134:
  if (intr_sts & USBi_SLI) {
    fsm->b_bus_suspend = 1;





    ci_otg_add_timer(ci, A_BIDL_ADIS);
  }

  if (intr_sts & USBi_URI)
   ci_otg_del_timer(ci, A_BIDL_ADIS);

  if (intr_sts & USBi_PCI) {
   if (fsm->b_bus_suspend == 1) {
    ci_otg_del_timer(ci, A_BIDL_ADIS);
    fsm->b_bus_suspend = 0;
   }
  }
  break;
 case 133:
  if ((intr_sts & USBi_PCI) && !port_conn) {
   fsm->b_conn = 0;


   if (ci->driver) {

    ci->gadget.is_a_peripheral = 1;
   }
   ci_otg_queue_work(ci);
  }
  break;
 case 135:
  if ((intr_sts & USBi_PCI) && !port_conn) {
   fsm->b_conn = 0;
   ci_otg_queue_work(ci);
  }
  break;
 case 128:
  if ((intr_sts & USBi_PCI) && port_conn) {
   fsm->a_conn = 1;
   ci_otg_queue_work(ci);
  }
  break;
 default:
  break;
 }
}
