
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int PortOffset; int interrupt_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MACvIntDisable (int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t vnt_interrupt(int irq, void *arg)
{
 struct vnt_private *priv = arg;

 schedule_work(&priv->interrupt_work);

 MACvIntDisable(priv->PortOffset);

 return IRQ_HANDLED;
}
