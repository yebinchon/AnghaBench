
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
typedef int tx_data ;
struct usb_ctrlrequest {int bRequestType; int wIndex; } ;
struct renesas_usb3_ep {int halt; } ;
struct TYPE_2__ {int speed; int is_selfpowered; } ;
struct renesas_usb3 {int ep0_req; TYPE_1__ gadget; } ;
typedef int __le16 ;


 int USB_DEVICE_SELF_POWERED ;
 int USB_ENDPOINT_HALT ;
 int USB_ENDPOINT_NUMBER_MASK ;



 int USB_RECIP_MASK ;
 int USB_SPEED_SUPER ;
 int cpu_to_le16 (int) ;
 int dev_dbg (int ,char*,int ) ;
 int le16_to_cpu (int ) ;
 int usb3_feature_get_un_enabled (struct renesas_usb3*) ;
 struct renesas_usb3_ep* usb3_get_ep (struct renesas_usb3*,int) ;
 int usb3_pipe0_get_status_completion ;
 int usb3_pipe0_internal_xfer (struct renesas_usb3*,int *,int,int ) ;
 int usb3_to_dev (struct renesas_usb3*) ;
 int usb_req_to_usb3_req (int ) ;

__attribute__((used)) static bool usb3_std_req_get_status(struct renesas_usb3 *usb3,
        struct usb_ctrlrequest *ctrl)
{
 bool stall = 0;
 struct renesas_usb3_ep *usb3_ep;
 int num;
 u16 status = 0;
 __le16 tx_data;

 switch (ctrl->bRequestType & USB_RECIP_MASK) {
 case 130:
  if (usb3->gadget.is_selfpowered)
   status |= 1 << USB_DEVICE_SELF_POWERED;
  if (usb3->gadget.speed == USB_SPEED_SUPER)
   status |= usb3_feature_get_un_enabled(usb3);
  break;
 case 128:
  break;
 case 129:
  num = le16_to_cpu(ctrl->wIndex) & USB_ENDPOINT_NUMBER_MASK;
  usb3_ep = usb3_get_ep(usb3, num);
  if (usb3_ep->halt)
   status |= 1 << USB_ENDPOINT_HALT;
  break;
 default:
  stall = 1;
  break;
 }

 if (!stall) {
  tx_data = cpu_to_le16(status);
  dev_dbg(usb3_to_dev(usb3), "get_status: req = %p\n",
   usb_req_to_usb3_req(usb3->ep0_req));
  usb3_pipe0_internal_xfer(usb3, &tx_data, sizeof(tx_data),
      usb3_pipe0_get_status_completion);
 }

 return stall;
}
