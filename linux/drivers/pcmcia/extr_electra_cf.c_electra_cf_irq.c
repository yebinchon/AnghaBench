
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct electra_cf_socket {int timer; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int electra_cf_timer (int *) ;

__attribute__((used)) static irqreturn_t electra_cf_irq(int irq, void *_cf)
{
 struct electra_cf_socket *cf = _cf;

 electra_cf_timer(&cf->timer);
 return IRQ_HANDLED;
}
