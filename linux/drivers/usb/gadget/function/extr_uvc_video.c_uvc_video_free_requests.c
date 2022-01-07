
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video {scalar_t__ req_size; int req_free; int ** req_buffer; int ** req; int ep; } ;


 int INIT_LIST_HEAD (int *) ;
 unsigned int UVC_NUM_REQUESTS ;
 int kfree (int *) ;
 int usb_ep_free_request (int ,int *) ;

__attribute__((used)) static int
uvc_video_free_requests(struct uvc_video *video)
{
 unsigned int i;

 for (i = 0; i < UVC_NUM_REQUESTS; ++i) {
  if (video->req[i]) {
   usb_ep_free_request(video->ep, video->req[i]);
   video->req[i] = ((void*)0);
  }

  if (video->req_buffer[i]) {
   kfree(video->req_buffer[i]);
   video->req_buffer[i] = ((void*)0);
  }
 }

 INIT_LIST_HEAD(&video->req_free);
 video->req_size = 0;
 return 0;
}
