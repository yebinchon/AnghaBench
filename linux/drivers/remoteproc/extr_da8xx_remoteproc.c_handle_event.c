
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int rproc_vq_interrupt (struct rproc*,int) ;

__attribute__((used)) static irqreturn_t handle_event(int irq, void *p)
{
 struct rproc *rproc = (struct rproc *)p;


 rproc_vq_interrupt(rproc, 0);
 rproc_vq_interrupt(rproc, 1);

 return IRQ_HANDLED;
}
