
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char u8 ;
struct TYPE_5__ {int b_hnp_enable; int a_hnp_support; int a_alt_hnp_support; } ;
struct vudc {unsigned int address; int devstatus; TYPE_4__* ep; TYPE_1__ gadget; } ;
struct TYPE_6__ {int name; } ;
struct vep {int halted; int wedged; TYPE_2__ ep; } ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int wValue; int wIndex; } ;
struct urb {int transfer_buffer_length; int actual_length; scalar_t__ transfer_buffer; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_8__ {TYPE_3__ ep; } ;


 int DEV_INREQUEST ;
 int DEV_REQUEST ;
 int EOPNOTSUPP ;
 int EP_INREQUEST ;
 int EP_REQUEST ;
 int INTF_INREQUEST ;
 unsigned int le16_to_cpu (int ) ;
 int min_t (int ,int,int) ;
 int u32 ;
 struct vep* vudc_find_endpoint (struct vudc*,unsigned int) ;

__attribute__((used)) static int handle_control_request(struct vudc *udc, struct urb *urb,
      struct usb_ctrlrequest *setup,
      int *status)
{
 struct vep *ep2;
 int ret_val = 1;
 unsigned int w_index;
 unsigned int w_value;

 w_index = le16_to_cpu(setup->wIndex);
 w_value = le16_to_cpu(setup->wValue);
 switch (setup->bRequest) {
 case 129:
  if (setup->bRequestType != DEV_REQUEST)
   break;
  udc->address = w_value;
  ret_val = 0;
  *status = 0;
  break;
 case 128:
  if (setup->bRequestType == DEV_REQUEST) {
   ret_val = 0;
   switch (w_value) {
   case 134:
    break;
   case 136:
    udc->gadget.b_hnp_enable = 1;
    break;
   case 137:
    udc->gadget.a_hnp_support = 1;
    break;
   case 138:
    udc->gadget.a_alt_hnp_support = 1;
    break;
   default:
    ret_val = -EOPNOTSUPP;
   }
   if (ret_val == 0) {
    udc->devstatus |= (1 << w_value);
    *status = 0;
   }
  } else if (setup->bRequestType == EP_REQUEST) {

   ep2 = vudc_find_endpoint(udc, w_index);
   if (!ep2 || ep2->ep.name == udc->ep[0].ep.name) {
    ret_val = -EOPNOTSUPP;
    break;
   }
   ep2->halted = 1;
   ret_val = 0;
   *status = 0;
  }
  break;
 case 131:
  if (setup->bRequestType == DEV_REQUEST) {
   ret_val = 0;
   switch (w_value) {
   case 134:
    w_value = 134;
    break;

   case 133:
   case 132:
   case 135:
    ret_val = -EOPNOTSUPP;
    break;
   default:
    ret_val = -EOPNOTSUPP;
    break;
   }
   if (ret_val == 0) {
    udc->devstatus &= ~(1 << w_value);
    *status = 0;
   }
  } else if (setup->bRequestType == EP_REQUEST) {

   ep2 = vudc_find_endpoint(udc, w_index);
   if (!ep2) {
    ret_val = -EOPNOTSUPP;
    break;
   }
   if (!ep2->wedged)
    ep2->halted = 0;
   ret_val = 0;
   *status = 0;
  }
  break;
 case 130:
  if (setup->bRequestType == DEV_INREQUEST
    || setup->bRequestType == INTF_INREQUEST
    || setup->bRequestType == EP_INREQUEST) {
   char *buf;





   buf = (char *)urb->transfer_buffer;
   if (urb->transfer_buffer_length > 0) {
    if (setup->bRequestType == EP_INREQUEST) {
     ep2 = vudc_find_endpoint(udc, w_index);
     if (!ep2) {
      ret_val = -EOPNOTSUPP;
      break;
     }
     buf[0] = ep2->halted;
    } else if (setup->bRequestType ==
        DEV_INREQUEST) {
     buf[0] = (u8)udc->devstatus;
    } else
     buf[0] = 0;
   }
   if (urb->transfer_buffer_length > 1)
    buf[1] = 0;
   urb->actual_length = min_t(u32, 2,
    urb->transfer_buffer_length);
   ret_val = 0;
   *status = 0;
  }
  break;
 }
 return ret_val;
}
