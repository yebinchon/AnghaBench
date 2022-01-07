
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {int parent_module; int device; scalar_t__ reset_required; int refcnt; } ;


 int WARN_ON (int) ;
 int dev_warn (int ,char*,int,char const*) ;
 int driver_lock ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put (int ) ;
 int vfio_platform_call_reset (struct vfio_platform_device*,char const**) ;
 int vfio_platform_irq_cleanup (struct vfio_platform_device*) ;
 int vfio_platform_regions_cleanup (struct vfio_platform_device*) ;

__attribute__((used)) static void vfio_platform_release(void *device_data)
{
 struct vfio_platform_device *vdev = device_data;

 mutex_lock(&driver_lock);

 if (!(--vdev->refcnt)) {
  const char *extra_dbg = ((void*)0);
  int ret;

  ret = vfio_platform_call_reset(vdev, &extra_dbg);
  if (ret && vdev->reset_required) {
   dev_warn(vdev->device, "reset driver is required and reset call failed in release (%d) %s\n",
     ret, extra_dbg ? extra_dbg : "");
   WARN_ON(1);
  }
  pm_runtime_put(vdev->device);
  vfio_platform_regions_cleanup(vdev);
  vfio_platform_irq_cleanup(vdev);
 }

 mutex_unlock(&driver_lock);

 module_put(vdev->parent_module);
}
