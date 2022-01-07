
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct TYPE_2__ {int queue; } ;
struct uvc_device {TYPE_1__ video; } ;
struct file {int dummy; } ;


 unsigned long uvcg_queue_get_unmapped_area (int *,unsigned long) ;
 struct video_device* video_devdata (struct file*) ;
 struct uvc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static unsigned long uvcg_v4l2_get_unmapped_area(struct file *file,
  unsigned long addr, unsigned long len, unsigned long pgoff,
  unsigned long flags)
{
 struct video_device *vdev = video_devdata(file);
 struct uvc_device *uvc = video_get_drvdata(vdev);

 return uvcg_queue_get_unmapped_area(&uvc->video.queue, pgoff);
}
