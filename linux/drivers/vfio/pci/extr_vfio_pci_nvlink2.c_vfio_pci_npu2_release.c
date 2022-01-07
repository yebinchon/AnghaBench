
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_region {struct vfio_pci_npu2_data* data; } ;
struct vfio_pci_npu2_data {int base; } ;
struct vfio_pci_device {int dummy; } ;


 int kfree (struct vfio_pci_npu2_data*) ;
 int memunmap (int ) ;

__attribute__((used)) static void vfio_pci_npu2_release(struct vfio_pci_device *vdev,
  struct vfio_pci_region *region)
{
 struct vfio_pci_npu2_data *data = region->data;

 memunmap(data->base);
 kfree(data);
}
