
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns2_phy_driver {int debounce_jiffies; int wq_extcon; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;

__attribute__((used)) static irqreturn_t gpio_irq_handler(int irq, void *dev_id)
{
 struct ns2_phy_driver *driver = dev_id;

 queue_delayed_work(system_power_efficient_wq, &driver->wq_extcon,
      driver->debounce_jiffies);

 return IRQ_HANDLED;
}
