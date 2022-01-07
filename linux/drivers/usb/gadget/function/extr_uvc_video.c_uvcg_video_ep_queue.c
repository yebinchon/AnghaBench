
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uvc_video {TYPE_2__* ep; TYPE_1__* uvc; } ;
struct usb_request {int dummy; } ;
struct TYPE_5__ {int desc; } ;
struct TYPE_4__ {int func; } ;


 int GFP_ATOMIC ;
 scalar_t__ usb_endpoint_xfer_bulk (int ) ;
 int usb_ep_queue (TYPE_2__*,struct usb_request*,int ) ;
 int usb_ep_set_halt (TYPE_2__*) ;
 int uvcg_err (int *,char*,int) ;

__attribute__((used)) static int uvcg_video_ep_queue(struct uvc_video *video, struct usb_request *req)
{
 int ret;

 ret = usb_ep_queue(video->ep, req, GFP_ATOMIC);
 if (ret < 0) {
  uvcg_err(&video->uvc->func, "Failed to queue request (%d).\n",
    ret);


  if (usb_endpoint_xfer_bulk(video->ep->desc))
   usb_ep_set_halt(video->ep);
 }

 return ret;
}
