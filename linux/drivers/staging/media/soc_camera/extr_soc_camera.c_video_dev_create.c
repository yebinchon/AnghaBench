
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int * lock; int * ctrl_handler; int release; int * ioctl_ops; int * fops; int * v4l2_dev; int name; } ;
struct soc_camera_host {int host_lock; int v4l2_dev; int drv_name; } ;
struct soc_camera_device {struct video_device* vdev; int ctrl_handler; int parent; } ;


 int ENOMEM ;
 int soc_camera_fops ;
 int soc_camera_ioctl_ops ;
 int strscpy (int ,int ,int) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 struct video_device* video_device_alloc () ;
 int video_device_release ;

__attribute__((used)) static int video_dev_create(struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->parent);
 struct video_device *vdev = video_device_alloc();

 if (!vdev)
  return -ENOMEM;

 strscpy(vdev->name, ici->drv_name, sizeof(vdev->name));

 vdev->v4l2_dev = &ici->v4l2_dev;
 vdev->fops = &soc_camera_fops;
 vdev->ioctl_ops = &soc_camera_ioctl_ops;
 vdev->release = video_device_release;
 vdev->ctrl_handler = &icd->ctrl_handler;
 vdev->lock = &ici->host_lock;

 icd->vdev = vdev;

 return 0;
}
