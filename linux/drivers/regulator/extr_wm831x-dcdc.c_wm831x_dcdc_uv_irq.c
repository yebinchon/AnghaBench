
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_dcdc {int regulator; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int REGULATOR_EVENT_UNDER_VOLTAGE ;
 int regulator_lock (int ) ;
 int regulator_notifier_call_chain (int ,int ,int *) ;
 int regulator_unlock (int ) ;

__attribute__((used)) static irqreturn_t wm831x_dcdc_uv_irq(int irq, void *data)
{
 struct wm831x_dcdc *dcdc = data;

 regulator_lock(dcdc->regulator);
 regulator_notifier_call_chain(dcdc->regulator,
          REGULATOR_EVENT_UNDER_VOLTAGE,
          ((void*)0));
 regulator_unlock(dcdc->regulator);

 return IRQ_HANDLED;
}
