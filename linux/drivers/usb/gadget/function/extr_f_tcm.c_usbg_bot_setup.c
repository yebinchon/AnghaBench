
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usb_function {TYPE_1__* config; } ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int wLength; int wValue; } ;
struct usb_composite_dev {TYPE_4__* req; TYPE_3__* gadget; } ;
struct f_uas {TYPE_2__* tpg; } ;
struct TYPE_8__ {int* buf; int length; } ;
struct TYPE_7__ {int ep0; } ;
struct TYPE_6__ {int tpg_port_count; } ;
struct TYPE_5__ {struct usb_composite_dev* cdev; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int GFP_ATOMIC ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;


 int atomic_read (int *) ;
 int bot_enqueue_cmd_cbw (struct f_uas*) ;
 int le16_to_cpu (int ) ;
 int pr_err (char*) ;
 int pr_info_once (char*) ;
 struct f_uas* to_f_uas (struct usb_function*) ;
 int usb_ep_queue (int ,TYPE_4__*,int ) ;

__attribute__((used)) static int usbg_bot_setup(struct usb_function *f,
  const struct usb_ctrlrequest *ctrl)
{
 struct f_uas *fu = to_f_uas(f);
 struct usb_composite_dev *cdev = f->config->cdev;
 u16 w_value = le16_to_cpu(ctrl->wValue);
 u16 w_length = le16_to_cpu(ctrl->wLength);
 int luns;
 u8 *ret_lun;

 switch (ctrl->bRequest) {
 case 129:
  if (ctrl->bRequestType != (USB_DIR_IN | USB_TYPE_CLASS |
     USB_RECIP_INTERFACE))
   return -ENOTSUPP;

  if (w_length < 1)
   return -EINVAL;
  if (w_value != 0)
   return -EINVAL;
  luns = atomic_read(&fu->tpg->tpg_port_count);
  if (!luns) {
   pr_err("No LUNs configured?\n");
   return -EINVAL;
  }




  luns--;
  if (luns > 0xf) {
   pr_info_once("Limiting the number of luns to 16\n");
   luns = 0xf;
  }
  ret_lun = cdev->req->buf;
  *ret_lun = luns;
  cdev->req->length = 1;
  return usb_ep_queue(cdev->gadget->ep0, cdev->req, GFP_ATOMIC);

 case 128:

  bot_enqueue_cmd_cbw(fu);
  return 0;
 }
 return -ENOTSUPP;
}
