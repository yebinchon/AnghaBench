
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {int dummy; } ;
struct platform_device {int dev; } ;


 int EINVAL ;
 int kfree (struct vfio_platform_device*) ;
 struct vfio_platform_device* vfio_platform_remove_common (int *) ;

__attribute__((used)) static int vfio_platform_remove(struct platform_device *pdev)
{
 struct vfio_platform_device *vdev;

 vdev = vfio_platform_remove_common(&pdev->dev);
 if (vdev) {
  kfree(vdev);
  return 0;
 }

 return -EINVAL;
}
