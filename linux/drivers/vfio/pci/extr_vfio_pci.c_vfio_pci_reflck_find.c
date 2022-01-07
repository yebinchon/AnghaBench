
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_reflck {int dummy; } ;
struct vfio_pci_device {struct vfio_pci_reflck* reflck; } ;
struct vfio_device {int dummy; } ;
struct pci_dev {int dev; } ;


 int * pci_dev_driver (struct pci_dev*) ;
 struct vfio_pci_device* vfio_device_data (struct vfio_device*) ;
 struct vfio_device* vfio_device_get_from_dev (int *) ;
 int vfio_device_put (struct vfio_device*) ;
 int vfio_pci_driver ;
 int vfio_pci_reflck_get (struct vfio_pci_reflck*) ;

__attribute__((used)) static int vfio_pci_reflck_find(struct pci_dev *pdev, void *data)
{
 struct vfio_pci_reflck **preflck = data;
 struct vfio_device *device;
 struct vfio_pci_device *vdev;

 device = vfio_device_get_from_dev(&pdev->dev);
 if (!device)
  return 0;

 if (pci_dev_driver(pdev) != &vfio_pci_driver) {
  vfio_device_put(device);
  return 0;
 }

 vdev = vfio_device_data(device);

 if (vdev->reflck) {
  vfio_pci_reflck_get(vdev->reflck);
  *preflck = vdev->reflck;
  vfio_device_put(device);
  return 1;
 }

 vfio_device_put(device);
 return 0;
}
