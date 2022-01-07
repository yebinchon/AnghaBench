
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_pci_region {struct vfio_pci_nvgpu_data* data; } ;
struct vfio_pci_nvgpu_data {TYPE_1__* gpdev; int group_notifier; scalar_t__ mm; int mem; } ;
struct vfio_pci_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int VFIO_GROUP_NOTIFY ;
 int WARN_ON (long) ;
 int kfree (struct vfio_pci_nvgpu_data*) ;
 long mm_iommu_put (scalar_t__,int ) ;
 int mmdrop (scalar_t__) ;
 int pnv_npu2_unmap_lpar_dev (TYPE_1__*) ;
 int vfio_unregister_notifier (int *,int ,int *) ;

__attribute__((used)) static void vfio_pci_nvgpu_release(struct vfio_pci_device *vdev,
  struct vfio_pci_region *region)
{
 struct vfio_pci_nvgpu_data *data = region->data;
 long ret;


 if (data->mm) {
  ret = mm_iommu_put(data->mm, data->mem);
  WARN_ON(ret);

  mmdrop(data->mm);
 }

 vfio_unregister_notifier(&data->gpdev->dev, VFIO_GROUP_NOTIFY,
   &data->group_notifier);

 pnv_npu2_unmap_lpar_dev(data->gpdev);

 kfree(data);
}
