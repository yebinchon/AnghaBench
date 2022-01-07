
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ queue; } ;
struct uvc_video {TYPE_2__ queue; } ;
struct uvc_device {struct uvc_video video; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 int uvcg_video_enable (struct uvc_video*,int ) ;
 struct video_device* video_devdata (struct file*) ;
 struct uvc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int
uvc_v4l2_streamoff(struct file *file, void *fh, enum v4l2_buf_type type)
{
 struct video_device *vdev = video_devdata(file);
 struct uvc_device *uvc = video_get_drvdata(vdev);
 struct uvc_video *video = &uvc->video;

 if (type != video->queue.queue.type)
  return -EINVAL;

 return uvcg_video_enable(video, 0);
}
