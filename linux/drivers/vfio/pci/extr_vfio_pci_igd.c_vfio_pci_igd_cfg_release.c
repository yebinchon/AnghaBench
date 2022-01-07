
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_region {struct pci_dev* data; } ;
struct vfio_pci_device {int dummy; } ;
struct pci_dev {int dummy; } ;


 int pci_dev_put (struct pci_dev*) ;

__attribute__((used)) static void vfio_pci_igd_cfg_release(struct vfio_pci_device *vdev,
         struct vfio_pci_region *region)
{
 struct pci_dev *pdev = region->data;

 pci_dev_put(pdev);
}
