
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct xhci_hub {int num_ports; TYPE_1__** ports; } ;
struct xhci_hcd {struct xhci_hub usb2_rhub; } ;
struct TYPE_5__ {int* DeviceRemovable; int* PortPwrCtrlMask; } ;
struct TYPE_6__ {TYPE_2__ hs; } ;
struct usb_hub_descriptor {TYPE_3__ u; scalar_t__ bDescLength; int bDescriptorType; } ;
struct usb_hcd {int dummy; } ;
typedef int port_removable ;
typedef int __u8 ;
struct TYPE_4__ {int addr; } ;


 int PORT_DEV_REMOVE ;
 int USB_DT_HUB ;
 scalar_t__ USB_DT_HUB_NONVAR_SIZE ;
 int USB_MAXCHILDREN ;
 int memset (int*,int,int) ;
 int readl (int ) ;
 int xhci_common_hub_descriptor (struct xhci_hcd*,struct usb_hub_descriptor*,int) ;

__attribute__((used)) static void xhci_usb2_hub_descriptor(struct usb_hcd *hcd, struct xhci_hcd *xhci,
  struct usb_hub_descriptor *desc)
{
 int ports;
 u16 temp;
 __u8 port_removable[(USB_MAXCHILDREN + 1 + 7) / 8];
 u32 portsc;
 unsigned int i;
 struct xhci_hub *rhub;

 rhub = &xhci->usb2_rhub;
 ports = rhub->num_ports;
 xhci_common_hub_descriptor(xhci, desc, ports);
 desc->bDescriptorType = USB_DT_HUB;
 temp = 1 + (ports / 8);
 desc->bDescLength = USB_DT_HUB_NONVAR_SIZE + 2 * temp;




 memset(port_removable, 0, sizeof(port_removable));
 for (i = 0; i < ports; i++) {
  portsc = readl(rhub->ports[i]->addr);



  if (portsc & PORT_DEV_REMOVE)



   port_removable[(i + 1) / 8] |= 1 << ((i + 1) % 8);
 }
 memset(desc->u.hs.DeviceRemovable, 0xff,
   sizeof(desc->u.hs.DeviceRemovable));
 memset(desc->u.hs.PortPwrCtrlMask, 0xff,
   sizeof(desc->u.hs.PortPwrCtrlMask));

 for (i = 0; i < (ports + 1 + 7) / 8; i++)
  memset(&desc->u.hs.DeviceRemovable[i], port_removable[i],
    sizeof(__u8));
}
