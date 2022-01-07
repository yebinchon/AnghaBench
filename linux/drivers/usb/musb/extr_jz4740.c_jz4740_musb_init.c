
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb {int dyn_fifo; int isr; int xceiv; TYPE_1__* controller; } ;
struct device {scalar_t__ of_node; } ;
struct TYPE_2__ {struct device* parent; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int USB_PHY_TYPE_USB2 ;
 int dev_err (struct device*,char*) ;
 int devm_usb_get_phy (struct device*,int ) ;
 int devm_usb_get_phy_by_phandle (struct device*,char*,int ) ;
 int jz4740_musb_interrupt ;

__attribute__((used)) static int jz4740_musb_init(struct musb *musb)
{
 struct device *dev = musb->controller->parent;

 if (dev->of_node)
  musb->xceiv = devm_usb_get_phy_by_phandle(dev, "phys", 0);
 else
  musb->xceiv = devm_usb_get_phy(dev, USB_PHY_TYPE_USB2);
 if (IS_ERR(musb->xceiv)) {
  dev_err(dev, "No transceiver configured\n");
  return PTR_ERR(musb->xceiv);
 }




 musb->dyn_fifo = 1;

 musb->isr = jz4740_musb_interrupt;

 return 0;
}
