
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct ci_hdrc* private; } ;
struct otg_fsm {int protocol; int id; int adp_prb; int loc_sof; int loc_conn; int drv_vbus; int b_srp_done; int b_sess_vld; int b_ssend_srp; int b_se0_srp; int b_bus_suspend; int b_bus_req; int a_conn; int a_bus_suspend; int a_bus_resume; int power_up; int adp_change; int b_conn; int a_vbus_vld; int a_srp_det; int a_bus_req; int a_bus_drop; } ;
struct TYPE_2__ {int state; } ;
struct ci_hdrc {TYPE_1__ otg; struct otg_fsm fsm; } ;


 int ci_otg_is_fsm_mode (struct ci_hdrc*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int usb_otg_state_string (int ) ;

__attribute__((used)) static int ci_otg_show(struct seq_file *s, void *unused)
{
 struct ci_hdrc *ci = s->private;
 struct otg_fsm *fsm;

 if (!ci || !ci_otg_is_fsm_mode(ci))
  return 0;

 fsm = &ci->fsm;


 seq_printf(s, "OTG state: %s\n\n",
   usb_otg_state_string(ci->otg.state));


 seq_printf(s, "a_bus_drop: %d\n", fsm->a_bus_drop);

 seq_printf(s, "a_bus_req: %d\n", fsm->a_bus_req);

 seq_printf(s, "a_srp_det: %d\n", fsm->a_srp_det);

 seq_printf(s, "a_vbus_vld: %d\n", fsm->a_vbus_vld);

 seq_printf(s, "b_conn: %d\n", fsm->b_conn);

 seq_printf(s, "adp_change: %d\n", fsm->adp_change);

 seq_printf(s, "power_up: %d\n", fsm->power_up);

 seq_printf(s, "a_bus_resume: %d\n", fsm->a_bus_resume);

 seq_printf(s, "a_bus_suspend: %d\n", fsm->a_bus_suspend);

 seq_printf(s, "a_conn: %d\n", fsm->a_conn);

 seq_printf(s, "b_bus_req: %d\n", fsm->b_bus_req);

 seq_printf(s, "b_bus_suspend: %d\n", fsm->b_bus_suspend);

 seq_printf(s, "b_se0_srp: %d\n", fsm->b_se0_srp);

 seq_printf(s, "b_ssend_srp: %d\n", fsm->b_ssend_srp);

 seq_printf(s, "b_sess_vld: %d\n", fsm->b_sess_vld);

 seq_printf(s, "b_srp_done: %d\n", fsm->b_srp_done);

 seq_printf(s, "drv_vbus: %d\n", fsm->drv_vbus);

 seq_printf(s, "loc_conn: %d\n", fsm->loc_conn);

 seq_printf(s, "loc_sof: %d\n", fsm->loc_sof);

 seq_printf(s, "adp_prb: %d\n", fsm->adp_prb);

 seq_printf(s, "id: %d\n", fsm->id);

 seq_printf(s, "protocol: %d\n", fsm->protocol);

 return 0;
}
