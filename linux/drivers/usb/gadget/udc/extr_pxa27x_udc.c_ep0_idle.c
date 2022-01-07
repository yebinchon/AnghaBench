
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_udc {int dummy; } ;


 int WAIT_FOR_SETUP ;
 int set_ep0state (struct pxa_udc*,int ) ;

__attribute__((used)) static void ep0_idle(struct pxa_udc *dev)
{
 set_ep0state(dev, WAIT_FOR_SETUP);
}
