
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unbind_from_irqhandler (scalar_t__,int *) ;
 int xb_waitq ;
 scalar_t__ xenbus_irq ;

void xb_deinit_comms(void)
{
 unbind_from_irqhandler(xenbus_irq, &xb_waitq);
 xenbus_irq = 0;
}
