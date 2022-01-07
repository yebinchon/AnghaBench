
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
struct f_ecm {int notify_state; int ctrl_id; struct usb_request* notify_req; int notify; int is_open; TYPE_3__ port; } ;
typedef struct usb_cdc_notification __le32 ;
struct TYPE_4__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*,...) ;



 int ECM_STATUS_BYTECOUNT ;
 int GFP_ATOMIC ;
 int USB_CDC_NOTIFY_NETWORK_CONNECTION ;
 int USB_CDC_NOTIFY_SPEED_CHANGE ;
 void* cpu_to_le16 (int) ;
 struct usb_cdc_notification cpu_to_le32 (int) ;
 int ecm_bitrate (int ) ;
 int usb_ep_queue (int ,struct usb_request*,int ) ;

__attribute__((used)) static void ecm_do_notify(struct f_ecm *ecm)
{
 struct usb_request *req = ecm->notify_req;
 struct usb_cdc_notification *event;
 struct usb_composite_dev *cdev = ecm->port.func.config->cdev;
 __le32 *data;
 int status;


 if (!req)
  return;

 event = req->buf;
 switch (ecm->notify_state) {
 case 129:
  return;

 case 130:
  event->bNotificationType = USB_CDC_NOTIFY_NETWORK_CONNECTION;
  if (ecm->is_open)
   event->wValue = cpu_to_le16(1);
  else
   event->wValue = cpu_to_le16(0);
  event->wLength = 0;
  req->length = sizeof *event;

  DBG(cdev, "notify connect %s\n",
    ecm->is_open ? "true" : "false");
  ecm->notify_state = 128;
  break;

 case 128:
  event->bNotificationType = USB_CDC_NOTIFY_SPEED_CHANGE;
  event->wValue = cpu_to_le16(0);
  event->wLength = cpu_to_le16(8);
  req->length = ECM_STATUS_BYTECOUNT;


  data = req->buf + sizeof *event;
  data[0] = cpu_to_le32(ecm_bitrate(cdev->gadget));
  data[1] = data[0];

  DBG(cdev, "notify speed %d\n", ecm_bitrate(cdev->gadget));
  ecm->notify_state = 129;
  break;
 }
 event->bmRequestType = 0xA1;
 event->wIndex = cpu_to_le16(ecm->ctrl_id);

 ecm->notify_req = ((void*)0);
 status = usb_ep_queue(ecm->notify, req, GFP_ATOMIC);
 if (status < 0) {
  ecm->notify_req = req;
  DBG(cdev, "notify --> %d\n", status);
 }
}
