
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xen_poll_irq_timeout (int,int ) ;

void xen_poll_irq(int irq)
{
 xen_poll_irq_timeout(irq, 0 );
}
