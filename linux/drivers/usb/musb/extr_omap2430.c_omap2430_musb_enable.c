
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omap_musb_board_data {int interface_type; } ;
struct omap2430_glue {int status; int control_otghs; } ;
struct musb_hdrc_platform_data {struct omap_musb_board_data* board_data; } ;
struct musb {int mregs; struct device* controller; } ;
struct device {int parent; } ;


 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_BDEVICE ;
 int MUSB_DEVCTL_SESSION ;

 int MUSB_INTERFACE_UTMI ;

 int USB_MODE_DEVICE ;
 int USB_MODE_HOST ;
 int cpu_relax () ;
 int dev_err (struct device*,char*) ;
 struct omap2430_glue* dev_get_drvdata (int ) ;
 struct musb_hdrc_platform_data* dev_get_platdata (struct device*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int musb_readb (int ,int ) ;
 int musb_writeb (int ,int ,int) ;
 int omap_control_usb_set_mode (int ,int ) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void omap2430_musb_enable(struct musb *musb)
{
 u8 devctl;
 unsigned long timeout = jiffies + msecs_to_jiffies(1000);
 struct device *dev = musb->controller;
 struct omap2430_glue *glue = dev_get_drvdata(dev->parent);
 struct musb_hdrc_platform_data *pdata = dev_get_platdata(dev);
 struct omap_musb_board_data *data = pdata->board_data;


 switch (glue->status) {

 case 129:
  omap_control_usb_set_mode(glue->control_otghs, USB_MODE_HOST);
  if (data->interface_type != MUSB_INTERFACE_UTMI)
   break;
  devctl = musb_readb(musb->mregs, MUSB_DEVCTL);

  devctl |= MUSB_DEVCTL_SESSION;
  musb_writeb(musb->mregs, MUSB_DEVCTL, devctl);
  while (musb_readb(musb->mregs, MUSB_DEVCTL) &
    MUSB_DEVCTL_BDEVICE) {
   cpu_relax();

   if (time_after(jiffies, timeout)) {
    dev_err(dev, "configured as A device timeout");
    break;
   }
  }
  break;

 case 128:
  omap_control_usb_set_mode(glue->control_otghs, USB_MODE_DEVICE);
  break;

 default:
  break;
 }
}
