
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int xenvif_ctrl_action (struct xenvif*) ;
 scalar_t__ xenvif_ctrl_work_todo (struct xenvif*) ;

irqreturn_t xenvif_ctrl_irq_fn(int irq, void *data)
{
 struct xenvif *vif = data;

 while (xenvif_ctrl_work_todo(vif))
  xenvif_ctrl_action(vif);

 return IRQ_HANDLED;
}
