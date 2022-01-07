
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct usb_ctrlrequest {int bRequestType; int bRequest; } ;
struct TYPE_4__ {scalar_t__ speed; } ;
struct fotg210_udc {TYPE_2__ gadget; scalar_t__ reg; TYPE_1__** ep; } ;
struct TYPE_3__ {int dir_in; } ;


 int DMCR_HS_EN ;
 scalar_t__ FOTG210_DMCR ;
 int USB_DIR_IN ;





 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_HIGH ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int USB_TYPE_MASK ;
 int USB_TYPE_STANDARD ;
 int fotg210_clear_feature (struct fotg210_udc*,struct usb_ctrlrequest*) ;
 int fotg210_get_status (struct fotg210_udc*,struct usb_ctrlrequest*) ;
 int fotg210_rdsetupp (struct fotg210_udc*,int*) ;
 int fotg210_set_address (struct fotg210_udc*,struct usb_ctrlrequest*) ;
 int fotg210_set_configuration (struct fotg210_udc*) ;
 int fotg210_set_feature (struct fotg210_udc*,struct usb_ctrlrequest*) ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static int fotg210_setup_packet(struct fotg210_udc *fotg210,
    struct usb_ctrlrequest *ctrl)
{
 u8 *p = (u8 *)ctrl;
 u8 ret = 0;

 fotg210_rdsetupp(fotg210, p);

 fotg210->ep[0]->dir_in = ctrl->bRequestType & USB_DIR_IN;

 if (fotg210->gadget.speed == USB_SPEED_UNKNOWN) {
  u32 value = ioread32(fotg210->reg + FOTG210_DMCR);
  fotg210->gadget.speed = value & DMCR_HS_EN ?
    USB_SPEED_HIGH : USB_SPEED_FULL;
 }


 if ((ctrl->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD) {
  switch (ctrl->bRequest) {
  case 131:
   fotg210_get_status(fotg210, ctrl);
   break;
  case 132:
   fotg210_clear_feature(fotg210, ctrl);
   break;
  case 128:
   fotg210_set_feature(fotg210, ctrl);
   break;
  case 130:
   fotg210_set_address(fotg210, ctrl);
   break;
  case 129:
   fotg210_set_configuration(fotg210);
   ret = 1;
   break;
  default:
   ret = 1;
   break;
  }
 } else {
  ret = 1;
 }

 return ret;
}
