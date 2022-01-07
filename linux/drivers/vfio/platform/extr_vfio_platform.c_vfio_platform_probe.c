
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {int reset_required; int parent_module; int get_irq; int get_resource; int flags; int name; void* opaque; } ;
struct platform_device {int dev; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int VFIO_DEVICE_FLAGS_PLATFORM ;
 int get_platform_irq ;
 int get_platform_resource ;
 int kfree (struct vfio_platform_device*) ;
 struct vfio_platform_device* kzalloc (int,int ) ;
 int reset_required ;
 int vfio_platform_probe_common (struct vfio_platform_device*,int *) ;

__attribute__((used)) static int vfio_platform_probe(struct platform_device *pdev)
{
 struct vfio_platform_device *vdev;
 int ret;

 vdev = kzalloc(sizeof(*vdev), GFP_KERNEL);
 if (!vdev)
  return -ENOMEM;

 vdev->opaque = (void *) pdev;
 vdev->name = pdev->name;
 vdev->flags = VFIO_DEVICE_FLAGS_PLATFORM;
 vdev->get_resource = get_platform_resource;
 vdev->get_irq = get_platform_irq;
 vdev->parent_module = THIS_MODULE;
 vdev->reset_required = reset_required;

 ret = vfio_platform_probe_common(vdev, &pdev->dev);
 if (ret)
  kfree(vdev);

 return ret;
}
