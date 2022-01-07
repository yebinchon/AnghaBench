
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_isink {int regulator; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int REGULATOR_EVENT_OVER_CURRENT ;
 int regulator_lock (int ) ;
 int regulator_notifier_call_chain (int ,int ,int *) ;
 int regulator_unlock (int ) ;

__attribute__((used)) static irqreturn_t wm831x_isink_irq(int irq, void *data)
{
 struct wm831x_isink *isink = data;

 regulator_lock(isink->regulator);
 regulator_notifier_call_chain(isink->regulator,
          REGULATOR_EVENT_OVER_CURRENT,
          ((void*)0));
 regulator_unlock(isink->regulator);

 return IRQ_HANDLED;
}
