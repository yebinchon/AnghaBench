
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucs1002_info {int charger; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t ucs1002_alert_irq(int irq, void *data)
{
 struct ucs1002_info *info = data;

 power_supply_changed(info->charger);

 return IRQ_HANDLED;
}
