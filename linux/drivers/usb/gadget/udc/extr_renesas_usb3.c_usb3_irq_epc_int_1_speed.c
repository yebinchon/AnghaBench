
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int speed; TYPE_1__* ep0; } ;
struct renesas_usb3 {TYPE_2__ gadget; } ;
struct TYPE_3__ {void* maxpacket; } ;


 void* USB3_EP0_HSFS_MAX_PACKET_SIZE ;
 void* USB3_EP0_SS_MAX_PACKET_SIZE ;
 int USB3_USB_STA ;
 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_SUPER ;
 int USB_SPEED_UNKNOWN ;


 int USB_STA_SPEED_MASK ;

 int usb3_read (struct renesas_usb3*,int ) ;

__attribute__((used)) static void usb3_irq_epc_int_1_speed(struct renesas_usb3 *usb3)
{
 u32 speed = usb3_read(usb3, USB3_USB_STA) & USB_STA_SPEED_MASK;

 switch (speed) {
 case 128:
  usb3->gadget.speed = USB_SPEED_SUPER;
  usb3->gadget.ep0->maxpacket = USB3_EP0_SS_MAX_PACKET_SIZE;
  break;
 case 129:
  usb3->gadget.speed = USB_SPEED_HIGH;
  usb3->gadget.ep0->maxpacket = USB3_EP0_HSFS_MAX_PACKET_SIZE;
  break;
 case 130:
  usb3->gadget.speed = USB_SPEED_FULL;
  usb3->gadget.ep0->maxpacket = USB3_EP0_HSFS_MAX_PACKET_SIZE;
  break;
 default:
  usb3->gadget.speed = USB_SPEED_UNKNOWN;
  break;
 }
}
