
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {scalar_t__ opaque; } ;
struct resource {int dummy; } ;
struct amba_device {struct resource res; } ;



__attribute__((used)) static struct resource *get_amba_resource(struct vfio_platform_device *vdev,
       int i)
{
 struct amba_device *adev = (struct amba_device *) vdev->opaque;

 if (i == 0)
  return &adev->res;

 return ((void*)0);
}
