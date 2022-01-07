
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_otg {scalar_t__ state; } ;
struct musb {int is_active; int mregs; TYPE_1__* xceiv; int controller; } ;
struct TYPE_2__ {struct usb_otg* otg; } ;


 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_BDEVICE ;
 int MUSB_DEVCTL_SESSION ;
 int MUSB_DEV_MODE (struct musb*) ;
 int MUSB_HST_MODE (struct musb*) ;
 scalar_t__ OTG_STATE_A_IDLE ;
 scalar_t__ OTG_STATE_A_WAIT_VRISE ;
 scalar_t__ OTG_STATE_B_IDLE ;
 int cpu_relax () ;
 int dev_dbg (int ,char*,int ,int) ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 int mdelay (int) ;
 unsigned long msecs_to_jiffies (int) ;
 int musb_readb (int ,int ) ;
 int musb_writeb (int ,int ,int) ;
 int otg_set_vbus (struct usb_otg*,int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usb_otg_state_string (scalar_t__) ;

__attribute__((used)) static void omap2430_musb_set_vbus(struct musb *musb, int is_on)
{
 struct usb_otg *otg = musb->xceiv->otg;
 u8 devctl;
 unsigned long timeout = jiffies + msecs_to_jiffies(1000);





 devctl = musb_readb(musb->mregs, MUSB_DEVCTL);

 if (is_on) {
  if (musb->xceiv->otg->state == OTG_STATE_A_IDLE) {
   int loops = 100;

   devctl |= MUSB_DEVCTL_SESSION;
   musb_writeb(musb->mregs, MUSB_DEVCTL, devctl);




   while (musb_readb(musb->mregs, MUSB_DEVCTL) &
          MUSB_DEVCTL_BDEVICE) {

    mdelay(5);
    cpu_relax();

    if (time_after(jiffies, timeout)
        || loops-- <= 0) {
     dev_err(musb->controller,
     "configured as A device timeout");
     break;
    }
   }

   otg_set_vbus(otg, 1);
  } else {
   musb->is_active = 1;
   musb->xceiv->otg->state = OTG_STATE_A_WAIT_VRISE;
   devctl |= MUSB_DEVCTL_SESSION;
   MUSB_HST_MODE(musb);
  }
 } else {
  musb->is_active = 0;





  musb->xceiv->otg->state = OTG_STATE_B_IDLE;
  devctl &= ~MUSB_DEVCTL_SESSION;

  MUSB_DEV_MODE(musb);
 }
 musb_writeb(musb->mregs, MUSB_DEVCTL, devctl);

 dev_dbg(musb->controller, "VBUS %s, devctl %02x "
                                    "\n",
  usb_otg_state_string(musb->xceiv->otg->state),
  musb_readb(musb->mregs, MUSB_DEVCTL));
}
