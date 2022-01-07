
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_pci_device {TYPE_1__* reflck; int refcnt; int pdev; } ;
struct TYPE_2__ {int lock; } ;


 int ENODEV ;
 int THIS_MODULE ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int try_module_get (int ) ;
 int vfio_pci_enable (struct vfio_pci_device*) ;
 int vfio_spapr_pci_eeh_open (int ) ;

__attribute__((used)) static int vfio_pci_open(void *device_data)
{
 struct vfio_pci_device *vdev = device_data;
 int ret = 0;

 if (!try_module_get(THIS_MODULE))
  return -ENODEV;

 mutex_lock(&vdev->reflck->lock);

 if (!vdev->refcnt) {
  ret = vfio_pci_enable(vdev);
  if (ret)
   goto error;

  vfio_spapr_pci_eeh_open(vdev->pdev);
 }
 vdev->refcnt++;
error:
 mutex_unlock(&vdev->reflck->lock);
 if (ret)
  module_put(THIS_MODULE);
 return ret;
}
