
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int mregs; } ;


 int MUSB_DEVCTL ;
 int musb_disable_interrupts (struct musb*) ;
 int musb_platform_disable (struct musb*) ;
 int musb_platform_try_idle (struct musb*,int ) ;
 int musb_writeb (int ,int ,int ) ;

void musb_stop(struct musb *musb)
{

 musb_platform_disable(musb);
 musb_disable_interrupts(musb);
 musb_writeb(musb->mregs, MUSB_DEVCTL, 0);
 musb_platform_try_idle(musb, 0);
}
