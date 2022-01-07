
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct v4l2_buffer {int dummy; } ;
struct uvc_video {int queue; } ;
struct uvc_device {struct uvc_video video; } ;
struct file {int dummy; } ;


 int uvcg_query_buffer (int *,struct v4l2_buffer*) ;
 struct video_device* video_devdata (struct file*) ;
 struct uvc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int
uvc_v4l2_querybuf(struct file *file, void *fh, struct v4l2_buffer *b)
{
 struct video_device *vdev = video_devdata(file);
 struct uvc_device *uvc = video_get_drvdata(vdev);
 struct uvc_video *video = &uvc->video;

 return uvcg_query_buffer(&video->queue, b);
}
