
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {int reset_required; struct vfio_platform_device* name; int parent_module; int get_irq; int get_resource; int flags; void* opaque; } ;
struct amba_id {int dummy; } ;
struct amba_device {int dev; int periphid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int VFIO_DEVICE_FLAGS_AMBA ;
 int get_amba_irq ;
 int get_amba_resource ;
 struct vfio_platform_device* kasprintf (int ,char*,int ) ;
 int kfree (struct vfio_platform_device*) ;
 struct vfio_platform_device* kzalloc (int,int ) ;
 int vfio_platform_probe_common (struct vfio_platform_device*,int *) ;

__attribute__((used)) static int vfio_amba_probe(struct amba_device *adev, const struct amba_id *id)
{
 struct vfio_platform_device *vdev;
 int ret;

 vdev = kzalloc(sizeof(*vdev), GFP_KERNEL);
 if (!vdev)
  return -ENOMEM;

 vdev->name = kasprintf(GFP_KERNEL, "vfio-amba-%08x", adev->periphid);
 if (!vdev->name) {
  kfree(vdev);
  return -ENOMEM;
 }

 vdev->opaque = (void *) adev;
 vdev->flags = VFIO_DEVICE_FLAGS_AMBA;
 vdev->get_resource = get_amba_resource;
 vdev->get_irq = get_amba_irq;
 vdev->parent_module = THIS_MODULE;
 vdev->reset_required = 0;

 ret = vfio_platform_probe_common(vdev, &adev->dev);
 if (ret) {
  kfree(vdev->name);
  kfree(vdev);
 }

 return ret;
}
