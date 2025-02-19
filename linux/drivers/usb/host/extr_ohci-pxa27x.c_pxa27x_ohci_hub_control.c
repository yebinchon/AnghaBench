
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_hcd {int dummy; } ;
struct pxa27x_ohci {int dummy; } ;



 int EPIPE ;

 int USB_PORT_FEAT_POWER ;
 int ohci_hub_control (struct usb_hcd*,int,int,int,char*,int) ;
 int pxa27x_ohci_set_vbus_power (struct pxa27x_ohci*,int ,int) ;
 struct pxa27x_ohci* to_pxa27x_ohci (struct usb_hcd*) ;

__attribute__((used)) static int pxa27x_ohci_hub_control(struct usb_hcd *hcd, u16 typeReq, u16 wValue,
       u16 wIndex, char *buf, u16 wLength)
{
 struct pxa27x_ohci *pxa_ohci = to_pxa27x_ohci(hcd);
 int ret;

 switch (typeReq) {
 case 128:
 case 129:
  if (!wIndex || wIndex > 3)
   return -EPIPE;

  if (wValue != USB_PORT_FEAT_POWER)
   break;

  ret = pxa27x_ohci_set_vbus_power(pxa_ohci, wIndex - 1,
       typeReq == 128);
  if (ret)
   return ret;
  break;
 }

 return ohci_hub_control(hcd, typeReq, wValue, wIndex, buf, wLength);
}
