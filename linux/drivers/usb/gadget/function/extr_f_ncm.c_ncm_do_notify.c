
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_request {int length; struct usb_cdc_notification* buf; } ;
struct usb_composite_dev {int gadget; } ;
struct usb_cdc_notification {int bmRequestType; void* wIndex; void* wLength; void* wValue; int bNotificationType; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_6__ {TYPE_2__ func; } ;
struct f_ncm {int notify_state; int ctrl_id; struct usb_request* notify_req; int lock; int notify; int is_open; TYPE_3__ port; } ;
typedef struct usb_cdc_notification __le32 ;
struct TYPE_4__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*,...) ;
 int GFP_ATOMIC ;



 int NCM_STATUS_BYTECOUNT ;
 int USB_CDC_NOTIFY_NETWORK_CONNECTION ;
 int USB_CDC_NOTIFY_SPEED_CHANGE ;
 void* cpu_to_le16 (int) ;
 struct usb_cdc_notification cpu_to_le32 (int) ;
 int ncm_bitrate (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_ep_queue (int ,struct usb_request*,int ) ;

__attribute__((used)) static void ncm_do_notify(struct f_ncm *ncm)
{
 struct usb_request *req = ncm->notify_req;
 struct usb_cdc_notification *event;
 struct usb_composite_dev *cdev = ncm->port.func.config->cdev;
 __le32 *data;
 int status;


 if (!req)
  return;

 event = req->buf;
 switch (ncm->notify_state) {
 case 129:
  return;

 case 130:
  event->bNotificationType = USB_CDC_NOTIFY_NETWORK_CONNECTION;
  if (ncm->is_open)
   event->wValue = cpu_to_le16(1);
  else
   event->wValue = cpu_to_le16(0);
  event->wLength = 0;
  req->length = sizeof *event;

  DBG(cdev, "notify connect %s\n",
    ncm->is_open ? "true" : "false");
  ncm->notify_state = 129;
  break;

 case 128:
  event->bNotificationType = USB_CDC_NOTIFY_SPEED_CHANGE;
  event->wValue = cpu_to_le16(0);
  event->wLength = cpu_to_le16(8);
  req->length = NCM_STATUS_BYTECOUNT;


  data = req->buf + sizeof *event;
  data[0] = cpu_to_le32(ncm_bitrate(cdev->gadget));
  data[1] = data[0];

  DBG(cdev, "notify speed %d\n", ncm_bitrate(cdev->gadget));
  ncm->notify_state = 130;
  break;
 }
 event->bmRequestType = 0xA1;
 event->wIndex = cpu_to_le16(ncm->ctrl_id);

 ncm->notify_req = ((void*)0);





 spin_unlock(&ncm->lock);
 status = usb_ep_queue(ncm->notify, req, GFP_ATOMIC);
 spin_lock(&ncm->lock);
 if (status < 0) {
  ncm->notify_req = req;
  DBG(cdev, "notify --> %d\n", status);
 }
}
