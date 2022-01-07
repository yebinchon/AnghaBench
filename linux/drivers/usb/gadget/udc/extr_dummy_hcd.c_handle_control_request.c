
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char u8 ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int wValue; int wIndex; } ;
struct urb {int transfer_buffer_length; int actual_length; scalar_t__ transfer_buffer; } ;
struct dummy_hcd {struct dummy* dum; } ;
struct TYPE_5__ {int name; } ;
struct dummy_ep {int halted; int wedged; TYPE_2__ ep; } ;
struct TYPE_4__ {int b_hnp_enable; int a_hnp_support; int a_alt_hnp_support; } ;
struct dummy {unsigned int address; int devstatus; TYPE_1__ gadget; } ;
struct TYPE_6__ {int speed; } ;


 int Dev_InRequest ;
 int Dev_Request ;
 int EOPNOTSUPP ;
 int Ep_InRequest ;
 int Ep_Request ;
 int HCD_USB3 ;
 int Intf_InRequest ;







 unsigned int USB_DEV_STAT_LTM_ENABLED ;
 unsigned int USB_DEV_STAT_U1_ENABLED ;
 unsigned int USB_DEV_STAT_U2_ENABLED ;




 int dev_dbg (int ,char*,unsigned int) ;
 TYPE_3__* dummy_hcd_to_hcd (struct dummy_hcd*) ;
 int ep0name ;
 struct dummy_ep* find_endpoint (struct dummy*,unsigned int) ;
 unsigned int le16_to_cpu (int ) ;
 int min_t (int ,int,int) ;
 int u32 ;
 int udc_dev (struct dummy*) ;

__attribute__((used)) static int handle_control_request(struct dummy_hcd *dum_hcd, struct urb *urb,
      struct usb_ctrlrequest *setup,
      int *status)
{
 struct dummy_ep *ep2;
 struct dummy *dum = dum_hcd->dum;
 int ret_val = 1;
 unsigned w_index;
 unsigned w_value;

 w_index = le16_to_cpu(setup->wIndex);
 w_value = le16_to_cpu(setup->wValue);
 switch (setup->bRequest) {
 case 129:
  if (setup->bRequestType != Dev_Request)
   break;
  dum->address = w_value;
  *status = 0;
  dev_dbg(udc_dev(dum), "set_address = %d\n",
    w_value);
  ret_val = 0;
  break;
 case 128:
  if (setup->bRequestType == Dev_Request) {
   ret_val = 0;
   switch (w_value) {
   case 134:
    break;
   case 136:
    dum->gadget.b_hnp_enable = 1;
    break;
   case 137:
    dum->gadget.a_hnp_support = 1;
    break;
   case 138:
    dum->gadget.a_alt_hnp_support = 1;
    break;
   case 133:
    if (dummy_hcd_to_hcd(dum_hcd)->speed ==
        HCD_USB3)
     w_value = USB_DEV_STAT_U1_ENABLED;
    else
     ret_val = -EOPNOTSUPP;
    break;
   case 132:
    if (dummy_hcd_to_hcd(dum_hcd)->speed ==
        HCD_USB3)
     w_value = USB_DEV_STAT_U2_ENABLED;
    else
     ret_val = -EOPNOTSUPP;
    break;
   case 135:
    if (dummy_hcd_to_hcd(dum_hcd)->speed ==
        HCD_USB3)
     w_value = USB_DEV_STAT_LTM_ENABLED;
    else
     ret_val = -EOPNOTSUPP;
    break;
   default:
    ret_val = -EOPNOTSUPP;
   }
   if (ret_val == 0) {
    dum->devstatus |= (1 << w_value);
    *status = 0;
   }
  } else if (setup->bRequestType == Ep_Request) {

   ep2 = find_endpoint(dum, w_index);
   if (!ep2 || ep2->ep.name == ep0name) {
    ret_val = -EOPNOTSUPP;
    break;
   }
   ep2->halted = 1;
   ret_val = 0;
   *status = 0;
  }
  break;
 case 131:
  if (setup->bRequestType == Dev_Request) {
   ret_val = 0;
   switch (w_value) {
   case 134:
    w_value = 134;
    break;
   case 133:
    if (dummy_hcd_to_hcd(dum_hcd)->speed ==
        HCD_USB3)
     w_value = USB_DEV_STAT_U1_ENABLED;
    else
     ret_val = -EOPNOTSUPP;
    break;
   case 132:
    if (dummy_hcd_to_hcd(dum_hcd)->speed ==
        HCD_USB3)
     w_value = USB_DEV_STAT_U2_ENABLED;
    else
     ret_val = -EOPNOTSUPP;
    break;
   case 135:
    if (dummy_hcd_to_hcd(dum_hcd)->speed ==
        HCD_USB3)
     w_value = USB_DEV_STAT_LTM_ENABLED;
    else
     ret_val = -EOPNOTSUPP;
    break;
   default:
    ret_val = -EOPNOTSUPP;
    break;
   }
   if (ret_val == 0) {
    dum->devstatus &= ~(1 << w_value);
    *status = 0;
   }
  } else if (setup->bRequestType == Ep_Request) {

   ep2 = find_endpoint(dum, w_index);
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
  if (setup->bRequestType == Dev_InRequest
    || setup->bRequestType == Intf_InRequest
    || setup->bRequestType == Ep_InRequest) {
   char *buf;





   buf = (char *)urb->transfer_buffer;
   if (urb->transfer_buffer_length > 0) {
    if (setup->bRequestType == Ep_InRequest) {
     ep2 = find_endpoint(dum, w_index);
     if (!ep2) {
      ret_val = -EOPNOTSUPP;
      break;
     }
     buf[0] = ep2->halted;
    } else if (setup->bRequestType ==
        Dev_InRequest) {
     buf[0] = (u8)dum->devstatus;
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
