
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_thermal_sensor {int irq_enabled; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int disable_irq_nosync (int) ;

__attribute__((used)) static irqreturn_t stm_thermal_alarm_irq(int irq, void *sdata)
{
 struct stm_thermal_sensor *sensor = sdata;

 disable_irq_nosync(irq);
 sensor->irq_enabled = 0;

 return IRQ_WAKE_THREAD;
}
