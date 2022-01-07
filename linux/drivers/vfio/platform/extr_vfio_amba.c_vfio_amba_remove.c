
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {struct vfio_platform_device* name; } ;
struct amba_device {int dev; } ;


 int EINVAL ;
 int kfree (struct vfio_platform_device*) ;
 struct vfio_platform_device* vfio_platform_remove_common (int *) ;

__attribute__((used)) static int vfio_amba_remove(struct amba_device *adev)
{
 struct vfio_platform_device *vdev;

 vdev = vfio_platform_remove_common(&adev->dev);
 if (vdev) {
  kfree(vdev->name);
  kfree(vdev);
  return 0;
 }

 return -EINVAL;
}
