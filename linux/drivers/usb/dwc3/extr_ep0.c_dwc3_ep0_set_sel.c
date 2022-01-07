
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct usb_ctrlrequest {int wLength; } ;
struct TYPE_6__ {int maxpacket; } ;
struct dwc3_ep {TYPE_2__ endpoint; } ;
struct TYPE_7__ {int complete; int buf; int length; } ;
struct TYPE_8__ {TYPE_3__ request; struct dwc3_ep* dep; } ;
struct TYPE_5__ {int state; } ;
struct dwc3 {TYPE_4__ ep0_usb_req; int setup_buf; struct dwc3_ep** eps; int dev; TYPE_1__ gadget; } ;
typedef enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;


 int EINVAL ;
 int USB_STATE_DEFAULT ;
 int __dwc3_gadget_ep0_queue (struct dwc3_ep*,TYPE_4__*) ;
 int dev_err (int ,char*,int) ;
 int dwc3_ep0_set_sel_cmpl ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int dwc3_ep0_set_sel(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
{
 struct dwc3_ep *dep;
 enum usb_device_state state = dwc->gadget.state;
 u16 wLength;

 if (state == USB_STATE_DEFAULT)
  return -EINVAL;

 wLength = le16_to_cpu(ctrl->wLength);

 if (wLength != 6) {
  dev_err(dwc->dev, "Set SEL should be 6 bytes, got %d\n",
    wLength);
  return -EINVAL;
 }
 dep = dwc->eps[0];
 dwc->ep0_usb_req.dep = dep;
 dwc->ep0_usb_req.request.length = dep->endpoint.maxpacket;
 dwc->ep0_usb_req.request.buf = dwc->setup_buf;
 dwc->ep0_usb_req.request.complete = dwc3_ep0_set_sel_cmpl;

 return __dwc3_gadget_ep0_queue(dep, &dwc->ep0_usb_req);
}
