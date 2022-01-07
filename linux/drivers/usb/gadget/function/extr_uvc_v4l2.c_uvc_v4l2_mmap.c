
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct video_device {int dummy; } ;
struct TYPE_2__ {int queue; } ;
struct uvc_device {TYPE_1__ video; } ;
struct file {int dummy; } ;


 int uvcg_queue_mmap (int *,struct vm_area_struct*) ;
 struct video_device* video_devdata (struct file*) ;
 struct uvc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int
uvc_v4l2_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct video_device *vdev = video_devdata(file);
 struct uvc_device *uvc = video_get_drvdata(vdev);

 return uvcg_queue_mmap(&uvc->video.queue, vma);
}
