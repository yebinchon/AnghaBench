
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_pci_device {TYPE_1__* reflck; int pdev; int refcnt; } ;
struct TYPE_2__ {int lock; } ;


 int THIS_MODULE ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfio_pci_disable (struct vfio_pci_device*) ;
 int vfio_spapr_pci_eeh_release (int ) ;

__attribute__((used)) static void vfio_pci_release(void *device_data)
{
 struct vfio_pci_device *vdev = device_data;

 mutex_lock(&vdev->reflck->lock);

 if (!(--vdev->refcnt)) {
  vfio_spapr_pci_eeh_release(vdev->pdev);
  vfio_pci_disable(vdev);
 }

 mutex_unlock(&vdev->reflck->lock);

 module_put(THIS_MODULE);
}
