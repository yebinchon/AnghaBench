
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned int u16 ;
struct usb_request {unsigned int length; struct usb_cdc_notification* buf; } ;
struct usb_ep {int dummy; } ;
struct usb_cdc_notification {int bmRequestType; void* wLength; void* wIndex; void* wValue; int bNotificationType; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_6__ {TYPE_2__ func; } ;
struct f_acm {int pending; unsigned int ctrl_id; struct usb_request* notify_req; int port_num; TYPE_3__ port; int lock; struct usb_ep* notify; } ;
struct TYPE_4__ {int cdev; } ;


 int ERROR (int ,char*,int ,int) ;
 int GFP_ATOMIC ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 void* cpu_to_le16 (unsigned int) ;
 int memcpy (void*,void*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_ep_queue (struct usb_ep*,struct usb_request*,int ) ;

__attribute__((used)) static int acm_cdc_notify(struct f_acm *acm, u8 type, u16 value,
  void *data, unsigned length)
{
 struct usb_ep *ep = acm->notify;
 struct usb_request *req;
 struct usb_cdc_notification *notify;
 const unsigned len = sizeof(*notify) + length;
 void *buf;
 int status;

 req = acm->notify_req;
 acm->notify_req = ((void*)0);
 acm->pending = 0;

 req->length = len;
 notify = req->buf;
 buf = notify + 1;

 notify->bmRequestType = USB_DIR_IN | USB_TYPE_CLASS
   | USB_RECIP_INTERFACE;
 notify->bNotificationType = type;
 notify->wValue = cpu_to_le16(value);
 notify->wIndex = cpu_to_le16(acm->ctrl_id);
 notify->wLength = cpu_to_le16(length);
 memcpy(buf, data, length);


 spin_unlock(&acm->lock);
 status = usb_ep_queue(ep, req, GFP_ATOMIC);
 spin_lock(&acm->lock);

 if (status < 0) {
  ERROR(acm->port.func.config->cdev,
    "acm ttyGS%d can't notify serial state, %d\n",
    acm->port_num, status);
  acm->notify_req = req;
 }

 return status;
}
