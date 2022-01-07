
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_ccg {int ucsi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ucsi_notify (int ) ;

__attribute__((used)) static irqreturn_t ccg_irq_handler(int irq, void *data)
{
 struct ucsi_ccg *uc = data;

 ucsi_notify(uc->ucsi);

 return IRQ_HANDLED;
}
