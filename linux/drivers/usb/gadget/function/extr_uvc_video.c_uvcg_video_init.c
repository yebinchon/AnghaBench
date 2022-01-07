
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video {int bpp; int width; int height; int imagesize; int mutex; int queue; int fcc; struct uvc_device* uvc; int req_lock; int req_free; } ;
struct uvc_device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_PIX_FMT_YUYV ;
 int spin_lock_init (int *) ;
 int uvcg_queue_init (int *,int ,int *) ;

int uvcg_video_init(struct uvc_video *video, struct uvc_device *uvc)
{
 INIT_LIST_HEAD(&video->req_free);
 spin_lock_init(&video->req_lock);

 video->uvc = uvc;
 video->fcc = V4L2_PIX_FMT_YUYV;
 video->bpp = 16;
 video->width = 320;
 video->height = 240;
 video->imagesize = 320 * 240 * 2;


 uvcg_queue_init(&video->queue, V4L2_BUF_TYPE_VIDEO_OUTPUT,
   &video->mutex);
 return 0;
}
