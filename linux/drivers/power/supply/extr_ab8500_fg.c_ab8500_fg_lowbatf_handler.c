
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int low_bat_delay; } ;
struct ab8500_fg {int fg_low_bat_work; int fg_wq; TYPE_1__ flags; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int LOW_BAT_CHECK_INTERVAL ;
 int dev_warn (int ,char*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int round_jiffies (int ) ;

__attribute__((used)) static irqreturn_t ab8500_fg_lowbatf_handler(int irq, void *_di)
{
 struct ab8500_fg *di = _di;


 if (!di->flags.low_bat_delay) {
  dev_warn(di->dev, "Battery voltage is below LOW threshold\n");
  di->flags.low_bat_delay = 1;




  queue_delayed_work(di->fg_wq, &di->fg_low_bat_work,
   round_jiffies(LOW_BAT_CHECK_INTERVAL));
 }
 return IRQ_HANDLED;
}
