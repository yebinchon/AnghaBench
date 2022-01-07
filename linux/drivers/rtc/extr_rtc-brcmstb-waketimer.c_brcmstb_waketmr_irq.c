
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmstb_waketmr {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int pm_wakeup_event (int ,int ) ;

__attribute__((used)) static irqreturn_t brcmstb_waketmr_irq(int irq, void *data)
{
 struct brcmstb_waketmr *timer = data;

 pm_wakeup_event(timer->dev, 0);

 return IRQ_HANDLED;
}
