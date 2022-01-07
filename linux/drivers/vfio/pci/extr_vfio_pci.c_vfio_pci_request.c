
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_device {int igate; scalar_t__ req_trigger; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;


 int eventfd_signal (scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_notice_ratelimited (struct pci_dev*,char*,unsigned int) ;
 int pci_warn (struct pci_dev*,char*) ;

__attribute__((used)) static void vfio_pci_request(void *device_data, unsigned int count)
{
 struct vfio_pci_device *vdev = device_data;
 struct pci_dev *pdev = vdev->pdev;

 mutex_lock(&vdev->igate);

 if (vdev->req_trigger) {
  if (!(count % 10))
   pci_notice_ratelimited(pdev,
    "Relaying device request to user (#%u)\n",
    count);
  eventfd_signal(vdev->req_trigger, 1);
 } else if (count == 0) {
  pci_warn(pdev,
   "No device request channel registered, blocked until released by user\n");
 }

 mutex_unlock(&vdev->igate);
}
