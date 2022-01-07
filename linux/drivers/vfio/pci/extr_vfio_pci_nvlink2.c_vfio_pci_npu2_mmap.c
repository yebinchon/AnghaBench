
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_page_prot; int vm_flags; } ;
struct vfio_pci_region {struct vfio_pci_npu2_data* data; } ;
struct vfio_pci_npu2_data {int mmio_atsd; } ;
struct vfio_pci_device {int pdev; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int VM_PFNMAP ;
 int pgprot_noncached (int ) ;
 int remap_pfn_range (struct vm_area_struct*,unsigned long,int,unsigned long,int ) ;
 int trace_vfio_pci_npu2_mmap (int ,int,unsigned long,unsigned long,int) ;

__attribute__((used)) static int vfio_pci_npu2_mmap(struct vfio_pci_device *vdev,
  struct vfio_pci_region *region, struct vm_area_struct *vma)
{
 int ret;
 struct vfio_pci_npu2_data *data = region->data;
 unsigned long req_len = vma->vm_end - vma->vm_start;

 if (req_len != PAGE_SIZE)
  return -EINVAL;

 vma->vm_flags |= VM_PFNMAP;
 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

 ret = remap_pfn_range(vma, vma->vm_start, data->mmio_atsd >> PAGE_SHIFT,
   req_len, vma->vm_page_prot);
 trace_vfio_pci_npu2_mmap(vdev->pdev, data->mmio_atsd, vma->vm_start,
   vma->vm_end - vma->vm_start, ret);

 return ret;
}
