
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_region {int data; } ;
struct vfio_pci_device {int dummy; } ;


 int memunmap (int ) ;

__attribute__((used)) static void vfio_pci_igd_release(struct vfio_pci_device *vdev,
     struct vfio_pci_region *region)
{
 memunmap(region->data);
}
