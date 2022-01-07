
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_device {int igate; scalar_t__ err_trigger; } ;
struct vfio_device {int dummy; } ;
struct pci_dev {int dev; } ;
typedef int pci_ers_result_t ;
typedef int pci_channel_state_t ;


 int PCI_ERS_RESULT_CAN_RECOVER ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int eventfd_signal (scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vfio_pci_device* vfio_device_data (struct vfio_device*) ;
 struct vfio_device* vfio_device_get_from_dev (int *) ;
 int vfio_device_put (struct vfio_device*) ;

__attribute__((used)) static pci_ers_result_t vfio_pci_aer_err_detected(struct pci_dev *pdev,
        pci_channel_state_t state)
{
 struct vfio_pci_device *vdev;
 struct vfio_device *device;

 device = vfio_device_get_from_dev(&pdev->dev);
 if (device == ((void*)0))
  return PCI_ERS_RESULT_DISCONNECT;

 vdev = vfio_device_data(device);
 if (vdev == ((void*)0)) {
  vfio_device_put(device);
  return PCI_ERS_RESULT_DISCONNECT;
 }

 mutex_lock(&vdev->igate);

 if (vdev->err_trigger)
  eventfd_signal(vdev->err_trigger, 1);

 mutex_unlock(&vdev->igate);

 vfio_device_put(device);

 return PCI_ERS_RESULT_CAN_RECOVER;
}
