
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap2430_glue {scalar_t__ status; int control_otghs; } ;
struct musb {struct device* controller; } ;
struct device {int parent; } ;


 scalar_t__ MUSB_UNKNOWN ;
 int USB_MODE_DISCONNECT ;
 struct omap2430_glue* dev_get_drvdata (int ) ;
 int omap_control_usb_set_mode (int ,int ) ;

__attribute__((used)) static void omap2430_musb_disable(struct musb *musb)
{
 struct device *dev = musb->controller;
 struct omap2430_glue *glue = dev_get_drvdata(dev->parent);

 if (glue->status != MUSB_UNKNOWN)
  omap_control_usb_set_mode(glue->control_otghs,
   USB_MODE_DISCONNECT);
}
