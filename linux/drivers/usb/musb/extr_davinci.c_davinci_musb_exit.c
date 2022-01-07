
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct musb {int xceiv; int controller; int mregs; int dev_timer; } ;


 int DM355_DEEPSLEEP ;
 int DRVVBUS_FORCE ;
 int DRVVBUS_OVERRIDE ;
 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_VBUS ;
 int MUSB_DEVCTL_VBUS_SHIFT ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 scalar_t__ cpu_is_davinci_dm355 () ;
 int davinci_musb_source_power (struct musb*,int ,int) ;
 int del_timer_sync (int *) ;
 int dev_dbg (int ,char*,int) ;
 int msleep (int) ;
 int musb_readb (int ,int ) ;
 int phy_off () ;
 int usb_put_phy (int ) ;

__attribute__((used)) static int davinci_musb_exit(struct musb *musb)
{
 int maxdelay = 30;
 u8 devctl, warn = 0;

 del_timer_sync(&musb->dev_timer);


 if (cpu_is_davinci_dm355()) {
  u32 deepsleep = __raw_readl(DM355_DEEPSLEEP);

  deepsleep &= ~DRVVBUS_FORCE;
  deepsleep |= DRVVBUS_OVERRIDE;
  __raw_writel(deepsleep, DM355_DEEPSLEEP);
 }

 davinci_musb_source_power(musb, 0 , 1);






 do {
  devctl = musb_readb(musb->mregs, MUSB_DEVCTL);
  if (!(devctl & MUSB_DEVCTL_VBUS))
   break;
  if ((devctl & MUSB_DEVCTL_VBUS) != warn) {
   warn = devctl & MUSB_DEVCTL_VBUS;
   dev_dbg(musb->controller, "VBUS %d\n",
    warn >> MUSB_DEVCTL_VBUS_SHIFT);
  }
  msleep(1000);
  maxdelay--;
 } while (maxdelay > 0);


 if (devctl & MUSB_DEVCTL_VBUS)
  dev_dbg(musb->controller, "VBUS off timeout (devctl %02x)\n", devctl);

 phy_off();

 usb_put_phy(musb->xceiv);

 return 0;
}
