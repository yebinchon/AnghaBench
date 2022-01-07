
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int * vm_ops; int vm_flags; struct vfio_pci_region* vm_private_data; } ;
struct vfio_pci_region {struct vfio_pci_nvgpu_data* data; } ;
struct vfio_pci_nvgpu_data {scalar_t__ useraddr; scalar_t__ size; int gpu_hpa; int mem; TYPE_1__* mm; } ;
struct vfio_pci_device {int pdev; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mm_count; } ;


 int EINVAL ;
 int EPERM ;
 int VM_PFNMAP ;
 int atomic_inc (int *) ;
 TYPE_2__* current ;
 scalar_t__ mm_iommu_newdev (TYPE_1__*,scalar_t__,int ,int ,int *) ;
 int trace_vfio_pci_nvgpu_mmap (int ,int ,scalar_t__,scalar_t__,int) ;
 int vfio_pci_nvgpu_mmap_vmops ;
 int vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static int vfio_pci_nvgpu_mmap(struct vfio_pci_device *vdev,
  struct vfio_pci_region *region, struct vm_area_struct *vma)
{
 int ret;
 struct vfio_pci_nvgpu_data *data = region->data;

 if (data->useraddr)
  return -EPERM;

 if (vma->vm_end - vma->vm_start > data->size)
  return -EINVAL;

 vma->vm_private_data = region;
 vma->vm_flags |= VM_PFNMAP;
 vma->vm_ops = &vfio_pci_nvgpu_mmap_vmops;







 data->useraddr = vma->vm_start;
 data->mm = current->mm;

 atomic_inc(&data->mm->mm_count);
 ret = (int) mm_iommu_newdev(data->mm, data->useraddr,
   vma_pages(vma), data->gpu_hpa, &data->mem);

 trace_vfio_pci_nvgpu_mmap(vdev->pdev, data->gpu_hpa, data->useraddr,
   vma->vm_end - vma->vm_start, ret);

 return ret;
}
