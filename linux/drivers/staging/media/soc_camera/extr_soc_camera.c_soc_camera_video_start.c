
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct soc_camera_device {TYPE_2__* vdev; int pdev; int parent; } ;
typedef struct device_type const device_type ;
struct TYPE_5__ {struct device_type const* type; } ;
struct TYPE_6__ {scalar_t__ tvnorms; TYPE_1__ dev; } ;


 int ENODEV ;
 int VFL_TYPE_GRABBER ;
 int VIDIOC_ENUMSTD ;
 int VIDIOC_G_STD ;
 int VIDIOC_S_STD ;
 int dev_err (int ,char*,int) ;
 int v4l2_disable_ioctl (TYPE_2__*,int ) ;
 int video_register_device (TYPE_2__*,int ,int) ;
 int video_set_drvdata (TYPE_2__*,struct soc_camera_device*) ;

__attribute__((used)) static int soc_camera_video_start(struct soc_camera_device *icd)
{
 const struct device_type *type = icd->vdev->dev.type;
 int ret;

 if (!icd->parent)
  return -ENODEV;

 video_set_drvdata(icd->vdev, icd);
 if (icd->vdev->tvnorms == 0) {

  v4l2_disable_ioctl(icd->vdev, VIDIOC_G_STD);
  v4l2_disable_ioctl(icd->vdev, VIDIOC_S_STD);
  v4l2_disable_ioctl(icd->vdev, VIDIOC_ENUMSTD);
 }
 ret = video_register_device(icd->vdev, VFL_TYPE_GRABBER, -1);
 if (ret < 0) {
  dev_err(icd->pdev, "video_register_device failed: %d\n", ret);
  return ret;
 }


 icd->vdev->dev.type = type;

 return 0;
}
