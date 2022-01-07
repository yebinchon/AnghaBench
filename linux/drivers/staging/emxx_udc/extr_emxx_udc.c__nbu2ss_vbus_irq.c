
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbu2ss_udc {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int _nbu2ss_check_vbus (struct nbu2ss_udc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t _nbu2ss_vbus_irq(int irq, void *_udc)
{
 struct nbu2ss_udc *udc = (struct nbu2ss_udc *)_udc;

 spin_lock(&udc->lock);
 _nbu2ss_check_vbus(udc);
 spin_unlock(&udc->lock);

 return IRQ_HANDLED;
}
