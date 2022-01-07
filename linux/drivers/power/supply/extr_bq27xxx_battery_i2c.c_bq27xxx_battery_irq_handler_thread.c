
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq27xxx_device_info {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bq27xxx_battery_update (struct bq27xxx_device_info*) ;

__attribute__((used)) static irqreturn_t bq27xxx_battery_irq_handler_thread(int irq, void *data)
{
 struct bq27xxx_device_info *di = data;

 bq27xxx_battery_update(di);

 return IRQ_HANDLED;
}
