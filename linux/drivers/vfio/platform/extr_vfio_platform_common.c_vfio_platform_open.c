
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {int device; int refcnt; scalar_t__ reset_required; int parent_module; } ;


 int ENODEV ;
 int THIS_MODULE ;
 int dev_warn (int ,char*,int,char const*) ;
 int driver_lock ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int try_module_get (int ) ;
 int vfio_platform_call_reset (struct vfio_platform_device*,char const**) ;
 int vfio_platform_irq_cleanup (struct vfio_platform_device*) ;
 int vfio_platform_irq_init (struct vfio_platform_device*) ;
 int vfio_platform_regions_cleanup (struct vfio_platform_device*) ;
 int vfio_platform_regions_init (struct vfio_platform_device*) ;

__attribute__((used)) static int vfio_platform_open(void *device_data)
{
 struct vfio_platform_device *vdev = device_data;
 int ret;

 if (!try_module_get(vdev->parent_module))
  return -ENODEV;

 mutex_lock(&driver_lock);

 if (!vdev->refcnt) {
  const char *extra_dbg = ((void*)0);

  ret = vfio_platform_regions_init(vdev);
  if (ret)
   goto err_reg;

  ret = vfio_platform_irq_init(vdev);
  if (ret)
   goto err_irq;

  ret = pm_runtime_get_sync(vdev->device);
  if (ret < 0)
   goto err_pm;

  ret = vfio_platform_call_reset(vdev, &extra_dbg);
  if (ret && vdev->reset_required) {
   dev_warn(vdev->device, "reset driver is required and reset call failed in open (%d) %s\n",
     ret, extra_dbg ? extra_dbg : "");
   goto err_rst;
  }
 }

 vdev->refcnt++;

 mutex_unlock(&driver_lock);
 return 0;

err_rst:
 pm_runtime_put(vdev->device);
err_pm:
 vfio_platform_irq_cleanup(vdev);
err_irq:
 vfio_platform_regions_cleanup(vdev);
err_reg:
 mutex_unlock(&driver_lock);
 module_put(THIS_MODULE);
 return ret;
}
