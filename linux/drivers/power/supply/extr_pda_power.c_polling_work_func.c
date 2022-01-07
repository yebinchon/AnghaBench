
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {int polling_interval; } ;


 scalar_t__ PDA_PSY_TO_CHANGE ;
 int ac_irq ;
 scalar_t__ ac_status ;
 int cancel_delayed_work (int *) ;
 int dev ;
 int dev_dbg (int ,char*) ;
 int msecs_to_jiffies (int ) ;
 scalar_t__ new_ac_status ;
 scalar_t__ new_usb_status ;
 TYPE_1__* pdata ;
 int polling_work ;
 int psy_changed () ;
 int schedule_delayed_work (int *,int ) ;
 int update_status () ;
 int usb_irq ;
 scalar_t__ usb_status ;

__attribute__((used)) static void polling_work_func(struct work_struct *work)
{
 int changed = 0;

 dev_dbg(dev, "polling...\n");

 update_status();

 if (!ac_irq && new_ac_status != ac_status) {
  ac_status = PDA_PSY_TO_CHANGE;
  changed = 1;
 }

 if (!usb_irq && new_usb_status != usb_status) {
  usb_status = PDA_PSY_TO_CHANGE;
  changed = 1;
 }

 if (changed)
  psy_changed();

 cancel_delayed_work(&polling_work);
 schedule_delayed_work(&polling_work,
         msecs_to_jiffies(pdata->polling_interval));
}
