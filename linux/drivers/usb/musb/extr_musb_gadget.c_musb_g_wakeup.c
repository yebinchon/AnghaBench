
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int g; } ;


 int musb_gadget_wakeup (int *) ;

void musb_g_wakeup(struct musb *musb)
{
 musb_gadget_wakeup(&musb->g);
}
