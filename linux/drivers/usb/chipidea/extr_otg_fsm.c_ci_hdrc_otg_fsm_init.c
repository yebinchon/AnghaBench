
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int power_up; int id; int b_ssend_srp; int b_sess_vld; int lock; int host_req_flag; int * ops; TYPE_1__* otg; } ;
struct TYPE_8__ {int hnp_polling_support; } ;
struct TYPE_7__ {int state; TYPE_2__* gadget; int usb_phy; scalar_t__ phy; } ;
struct ci_hdrc {TYPE_3__ fsm; TYPE_4__* dev; int next_otg_timer; scalar_t__ enabled_otg_timer_bits; TYPE_2__ gadget; TYPE_1__ otg; int usb_phy; scalar_t__ phy; } ;
struct TYPE_10__ {int kobj; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NUM_OTG_FSM_TIMERS ;
 int OTGSC_AVVIE ;
 int OTGSC_BSV ;
 int OTGSC_BSVIE ;
 int OTGSC_ID ;
 int OTG_STATE_UNDEFINED ;
 int ci_otg_init_timers (struct ci_hdrc*) ;
 int ci_otg_ops ;
 int dev_dbg (TYPE_4__*,char*,int) ;
 int dev_err (TYPE_4__*,char*) ;
 int devm_kzalloc (TYPE_4__*,int,int ) ;
 scalar_t__ hw_read_otgsc (struct ci_hdrc*,int ) ;
 int hw_write_otgsc (struct ci_hdrc*,int ,int ) ;
 int inputs_attr_group ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;

int ci_hdrc_otg_fsm_init(struct ci_hdrc *ci)
{
 int retval = 0;

 if (ci->phy)
  ci->otg.phy = ci->phy;
 else
  ci->otg.usb_phy = ci->usb_phy;

 ci->otg.gadget = &ci->gadget;
 ci->fsm.otg = &ci->otg;
 ci->fsm.power_up = 1;
 ci->fsm.id = hw_read_otgsc(ci, OTGSC_ID) ? 1 : 0;
 ci->fsm.otg->state = OTG_STATE_UNDEFINED;
 ci->fsm.ops = &ci_otg_ops;
 ci->gadget.hnp_polling_support = 1;
 ci->fsm.host_req_flag = devm_kzalloc(ci->dev, 1, GFP_KERNEL);
 if (!ci->fsm.host_req_flag)
  return -ENOMEM;

 mutex_init(&ci->fsm.lock);

 retval = ci_otg_init_timers(ci);
 if (retval) {
  dev_err(ci->dev, "Couldn't init OTG timers\n");
  return retval;
 }
 ci->enabled_otg_timer_bits = 0;
 ci->next_otg_timer = NUM_OTG_FSM_TIMERS;

 retval = sysfs_create_group(&ci->dev->kobj, &inputs_attr_group);
 if (retval < 0) {
  dev_dbg(ci->dev,
   "Can't register sysfs attr group: %d\n", retval);
  return retval;
 }


 hw_write_otgsc(ci, OTGSC_AVVIE, OTGSC_AVVIE);

 if (ci->fsm.id) {
  ci->fsm.b_ssend_srp =
   hw_read_otgsc(ci, OTGSC_BSV) ? 0 : 1;
  ci->fsm.b_sess_vld =
   hw_read_otgsc(ci, OTGSC_BSV) ? 1 : 0;

  hw_write_otgsc(ci, OTGSC_BSVIE, OTGSC_BSVIE);
 }

 return 0;
}
