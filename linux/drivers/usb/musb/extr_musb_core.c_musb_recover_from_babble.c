
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct musb {scalar_t__ dyn_fifo; int mregs; } ;


 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_SESSION ;
 int ep_config_from_hw (struct musb*) ;
 int ep_config_from_table (struct musb*) ;
 int musb_disable_interrupts (struct musb*) ;
 int musb_enable_interrupts (struct musb*) ;
 int musb_platform_recover (struct musb*) ;
 int musb_readb (int ,int ) ;
 int musb_root_disconnect (struct musb*) ;
 int musb_start (struct musb*) ;
 int musb_writeb (int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void musb_recover_from_babble(struct musb *musb)
{
 int ret;
 u8 devctl;

 musb_disable_interrupts(musb);





 udelay(10);

 ret = musb_platform_recover(musb);
 if (ret) {
  musb_enable_interrupts(musb);
  return;
 }


 devctl = musb_readb(musb->mregs, MUSB_DEVCTL);
 devctl &= ~MUSB_DEVCTL_SESSION;
 musb_writeb(musb->mregs, MUSB_DEVCTL, devctl);


 musb_root_disconnect(musb);





 if (musb->dyn_fifo)
  ret = ep_config_from_table(musb);
 else
  ret = ep_config_from_hw(musb);


 if (ret == 0)
  musb_start(musb);
}
