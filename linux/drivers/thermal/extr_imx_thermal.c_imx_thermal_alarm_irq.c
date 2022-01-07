
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_thermal_data {int irq_enabled; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int disable_irq_nosync (int) ;

__attribute__((used)) static irqreturn_t imx_thermal_alarm_irq(int irq, void *dev)
{
 struct imx_thermal_data *data = dev;

 disable_irq_nosync(irq);
 data->irq_enabled = 0;

 return IRQ_WAKE_THREAD;
}
