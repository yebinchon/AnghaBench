
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct TYPE_2__ {int queue; } ;
struct uvc_device {TYPE_1__ video; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int uvcg_queue_poll (int *,struct file*,int *) ;
 struct video_device* video_devdata (struct file*) ;
 struct uvc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static __poll_t
uvc_v4l2_poll(struct file *file, poll_table *wait)
{
 struct video_device *vdev = video_devdata(file);
 struct uvc_device *uvc = video_get_drvdata(vdev);

 return uvcg_queue_poll(&uvc->video.queue, file, wait);
}
