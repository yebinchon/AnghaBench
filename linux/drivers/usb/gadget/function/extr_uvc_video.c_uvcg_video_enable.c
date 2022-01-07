
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_video {int encode; scalar_t__ payload_size; scalar_t__ max_payload_size; int queue; scalar_t__* req; int * ep; TYPE_1__* uvc; } ;
struct TYPE_2__ {int func; } ;


 int ENODEV ;
 unsigned int UVC_NUM_REQUESTS ;
 int usb_ep_dequeue (int *,scalar_t__) ;
 int uvc_video_alloc_requests (struct uvc_video*) ;
 int uvc_video_encode_bulk ;
 int uvc_video_encode_isoc ;
 int uvc_video_free_requests (struct uvc_video*) ;
 int uvcg_info (int *,char*) ;
 int uvcg_queue_enable (int *,int) ;
 int uvcg_video_pump (struct uvc_video*) ;

int uvcg_video_enable(struct uvc_video *video, int enable)
{
 unsigned int i;
 int ret;

 if (video->ep == ((void*)0)) {
  uvcg_info(&video->uvc->func,
     "Video enable failed, device is uninitialized.\n");
  return -ENODEV;
 }

 if (!enable) {
  for (i = 0; i < UVC_NUM_REQUESTS; ++i)
   if (video->req[i])
    usb_ep_dequeue(video->ep, video->req[i]);

  uvc_video_free_requests(video);
  uvcg_queue_enable(&video->queue, 0);
  return 0;
 }

 if ((ret = uvcg_queue_enable(&video->queue, 1)) < 0)
  return ret;

 if ((ret = uvc_video_alloc_requests(video)) < 0)
  return ret;

 if (video->max_payload_size) {
  video->encode = uvc_video_encode_bulk;
  video->payload_size = 0;
 } else
  video->encode = uvc_video_encode_isoc;

 return uvcg_video_pump(video);
}
