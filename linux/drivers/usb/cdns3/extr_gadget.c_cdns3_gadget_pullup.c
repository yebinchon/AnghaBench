
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct cdns3_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int usb_conf; } ;


 int USB_CONF_DEVDS ;
 int USB_CONF_DEVEN ;
 struct cdns3_device* gadget_to_cdns3_device (struct usb_gadget*) ;
 int writel (int ,int *) ;

__attribute__((used)) static int cdns3_gadget_pullup(struct usb_gadget *gadget, int is_on)
{
 struct cdns3_device *priv_dev = gadget_to_cdns3_device(gadget);

 if (is_on)
  writel(USB_CONF_DEVEN, &priv_dev->regs->usb_conf);
 else
  writel(USB_CONF_DEVDS, &priv_dev->regs->usb_conf);

 return 0;
}
