
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usb_request {scalar_t__ length; scalar_t__ buf; int * context; } ;
struct usb_function {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int wValue; int bRequest; int wLength; int wIndex; } ;
struct fsg_dev {int interface_number; TYPE_1__* common; } ;
struct TYPE_5__ {int ep0_req_tag; struct usb_request* ep0req; } ;


 int DBG (struct fsg_dev*,char*) ;
 int EDOM ;
 int EOPNOTSUPP ;
 int FSG_STATE_PROTOCOL_RESET ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_GADGET_DELAYED_STATUS ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;


 int VDBG (struct fsg_dev*,char*,...) ;
 int _fsg_common_get_max_lun (TYPE_1__*) ;
 int dump_msg (struct fsg_dev*,char*,int *,int) ;
 int ep0_queue (TYPE_1__*) ;
 struct fsg_dev* fsg_from_func (struct usb_function*) ;
 int fsg_is_set (TYPE_1__*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ min (int,int) ;
 int raise_exception (TYPE_1__*,int ) ;

__attribute__((used)) static int fsg_setup(struct usb_function *f,
       const struct usb_ctrlrequest *ctrl)
{
 struct fsg_dev *fsg = fsg_from_func(f);
 struct usb_request *req = fsg->common->ep0req;
 u16 w_index = le16_to_cpu(ctrl->wIndex);
 u16 w_value = le16_to_cpu(ctrl->wValue);
 u16 w_length = le16_to_cpu(ctrl->wLength);

 if (!fsg_is_set(fsg->common))
  return -EOPNOTSUPP;

 ++fsg->common->ep0_req_tag;
 req->context = ((void*)0);
 req->length = 0;
 dump_msg(fsg, "ep0-setup", (u8 *) ctrl, sizeof(*ctrl));

 switch (ctrl->bRequest) {

 case 128:
  if (ctrl->bRequestType !=
      (USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE))
   break;
  if (w_index != fsg->interface_number || w_value != 0 ||
    w_length != 0)
   return -EDOM;





  DBG(fsg, "bulk reset request\n");
  raise_exception(fsg->common, FSG_STATE_PROTOCOL_RESET);
  return USB_GADGET_DELAYED_STATUS;

 case 129:
  if (ctrl->bRequestType !=
      (USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE))
   break;
  if (w_index != fsg->interface_number || w_value != 0 ||
    w_length != 1)
   return -EDOM;
  VDBG(fsg, "get max LUN\n");
  *(u8 *)req->buf = _fsg_common_get_max_lun(fsg->common);


  req->length = min((u16)1, w_length);
  return ep0_queue(fsg->common);
 }

 VDBG(fsg,
      "unknown class-specific control req %02x.%02x v%04x i%04x l%u\n",
      ctrl->bRequestType, ctrl->bRequest,
      le16_to_cpu(ctrl->wValue), w_index, w_length);
 return -EOPNOTSUPP;
}
