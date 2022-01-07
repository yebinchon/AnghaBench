
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vbus_drop_end; } ;
struct ab8500_charger {int vbus_drop_end_work; int charger_wq; TYPE_1__ flags; int dev; } ;
typedef int irqreturn_t ;


 int HZ ;
 int IRQ_HANDLED ;
 int VBUS_IN_CURR_LIM_RETRY_SET_TIME ;
 int dev_dbg (int ,char*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int round_jiffies (int) ;

__attribute__((used)) static irqreturn_t ab8500_charger_vbuschdropend_handler(int irq, void *_di)
{
 struct ab8500_charger *di = _di;

 dev_dbg(di->dev, "VBUS charger drop ended\n");
 di->flags.vbus_drop_end = 1;





 queue_delayed_work(di->charger_wq, &di->vbus_drop_end_work,
      round_jiffies(VBUS_IN_CURR_LIM_RETRY_SET_TIME * HZ));

 return IRQ_HANDLED;
}
