
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct cdns3_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int usb_itpn; } ;


 struct cdns3_device* gadget_to_cdns3_device (struct usb_gadget*) ;
 int readl (int *) ;

__attribute__((used)) static int cdns3_gadget_get_frame(struct usb_gadget *gadget)
{
 struct cdns3_device *priv_dev = gadget_to_cdns3_device(gadget);

 return readl(&priv_dev->regs->usb_itpn);
}
