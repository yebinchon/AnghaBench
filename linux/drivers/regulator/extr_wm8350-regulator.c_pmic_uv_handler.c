
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int REGULATOR_EVENT_REGULATION_OUT ;
 int REGULATOR_EVENT_UNDER_VOLTAGE ;
 int WM8350_IRQ_CS1 ;
 int WM8350_IRQ_CS2 ;
 int regulator_lock (struct regulator_dev*) ;
 int regulator_notifier_call_chain (struct regulator_dev*,int ,int *) ;
 int regulator_unlock (struct regulator_dev*) ;

__attribute__((used)) static irqreturn_t pmic_uv_handler(int irq, void *data)
{
 struct regulator_dev *rdev = (struct regulator_dev *)data;

 regulator_lock(rdev);
 if (irq == WM8350_IRQ_CS1 || irq == WM8350_IRQ_CS2)
  regulator_notifier_call_chain(rdev,
           REGULATOR_EVENT_REGULATION_OUT,
           ((void*)0));
 else
  regulator_notifier_call_chain(rdev,
           REGULATOR_EVENT_UNDER_VOLTAGE,
           ((void*)0));
 regulator_unlock(rdev);

 return IRQ_HANDLED;
}
