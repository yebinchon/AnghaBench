
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct usb_request {int length; scalar_t__ zero; } ;
struct usb_function {struct usb_configuration* config; } ;
struct usb_ctrlrequest {int bRequestType; int bRequest; int wLength; int wValue; int wIndex; } ;
struct usb_configuration {TYPE_2__* cdev; } ;
struct TYPE_5__ {TYPE_1__* gadget; struct usb_request* req; } ;
struct TYPE_4__ {int ep0; } ;


 int EOPNOTSUPP ;
 int ERROR (TYPE_2__*,char*,int) ;
 int GFP_ATOMIC ;
 int USB_COMP_EP0_BUFSIZ ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int VDBG (TYPE_2__*,char*,int,int ,int,int,int) ;
 int le16_to_cpu (int ) ;
 int usb_ep_queue (int ,struct usb_request*,int ) ;

__attribute__((used)) static int sourcesink_setup(struct usb_function *f,
  const struct usb_ctrlrequest *ctrl)
{
 struct usb_configuration *c = f->config;
 struct usb_request *req = c->cdev->req;
 int value = -EOPNOTSUPP;
 u16 w_index = le16_to_cpu(ctrl->wIndex);
 u16 w_value = le16_to_cpu(ctrl->wValue);
 u16 w_length = le16_to_cpu(ctrl->wLength);

 req->length = USB_COMP_EP0_BUFSIZ;




 switch (ctrl->bRequest) {
 case 0x5b:
  if (ctrl->bRequestType != (USB_DIR_OUT|USB_TYPE_VENDOR))
   goto unknown;
  if (w_value || w_index)
   break;

  if (w_length > req->length)
   break;
  value = w_length;
  break;
 case 0x5c:
  if (ctrl->bRequestType != (USB_DIR_IN|USB_TYPE_VENDOR))
   goto unknown;
  if (w_value || w_index)
   break;

  if (w_length > req->length)
   break;
  value = w_length;
  break;

 default:
unknown:
  VDBG(c->cdev,
   "unknown control req%02x.%02x v%04x i%04x l%d\n",
   ctrl->bRequestType, ctrl->bRequest,
   w_value, w_index, w_length);
 }


 if (value >= 0) {
  VDBG(c->cdev, "source/sink req%02x.%02x v%04x i%04x l%d\n",
   ctrl->bRequestType, ctrl->bRequest,
   w_value, w_index, w_length);
  req->zero = 0;
  req->length = value;
  value = usb_ep_queue(c->cdev->gadget->ep0, req, GFP_ATOMIC);
  if (value < 0)
   ERROR(c->cdev, "source/sink response, err %d\n",
     value);
 }


 return value;
}
