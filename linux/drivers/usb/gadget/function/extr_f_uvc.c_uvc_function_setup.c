
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_event ;
struct TYPE_2__ {int data; } ;
struct v4l2_event {int type; TYPE_1__ u; } ;
struct uvc_event {int req; } ;
struct uvc_device {int event_setup_out; int vdev; scalar_t__ event_length; } ;
struct usb_function {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int wLength; } ;


 int EINVAL ;
 int USB_DIR_IN ;
 int USB_TYPE_CLASS ;
 int USB_TYPE_MASK ;
 int UVC_EVENT_SETUP ;
 scalar_t__ UVC_MAX_REQUEST_SIZE ;
 scalar_t__ le16_to_cpu (int ) ;
 int memcpy (int *,struct usb_ctrlrequest const*,int) ;
 int memset (struct v4l2_event*,int ,int) ;
 struct uvc_device* to_uvc (struct usb_function*) ;
 int uvcg_info (struct usb_function*,char*) ;
 int v4l2_event_queue (int *,struct v4l2_event*) ;

__attribute__((used)) static int
uvc_function_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
{
 struct uvc_device *uvc = to_uvc(f);
 struct v4l2_event v4l2_event;
 struct uvc_event *uvc_event = (void *)&v4l2_event.u.data;

 if ((ctrl->bRequestType & USB_TYPE_MASK) != USB_TYPE_CLASS) {
  uvcg_info(f, "invalid request type\n");
  return -EINVAL;
 }


 if (le16_to_cpu(ctrl->wLength) > UVC_MAX_REQUEST_SIZE)
  return -EINVAL;




 uvc->event_setup_out = !(ctrl->bRequestType & USB_DIR_IN);
 uvc->event_length = le16_to_cpu(ctrl->wLength);

 memset(&v4l2_event, 0, sizeof(v4l2_event));
 v4l2_event.type = UVC_EVENT_SETUP;
 memcpy(&uvc_event->req, ctrl, sizeof(uvc_event->req));
 v4l2_event_queue(&uvc->vdev, &v4l2_event);

 return 0;
}
