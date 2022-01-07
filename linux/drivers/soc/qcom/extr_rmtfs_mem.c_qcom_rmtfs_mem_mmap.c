
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_page_prot; } ;
struct qcom_rmtfs_mem {scalar_t__ size; int addr; int dev; } ;
struct file {struct qcom_rmtfs_mem* private_data; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int dev_dbg (int *,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ;
 int pgprot_writecombine (int ) ;
 int remap_pfn_range (struct vm_area_struct*,scalar_t__,int,scalar_t__,int ) ;

__attribute__((used)) static int qcom_rmtfs_mem_mmap(struct file *filep, struct vm_area_struct *vma)
{
 struct qcom_rmtfs_mem *rmtfs_mem = filep->private_data;

 if (vma->vm_end - vma->vm_start > rmtfs_mem->size) {
  dev_dbg(&rmtfs_mem->dev,
   "vm_end[%lu] - vm_start[%lu] [%lu] > mem->size[%pa]\n",
   vma->vm_end, vma->vm_start,
   (vma->vm_end - vma->vm_start), &rmtfs_mem->size);
  return -EINVAL;
 }

 vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);
 return remap_pfn_range(vma,
          vma->vm_start,
          rmtfs_mem->addr >> PAGE_SHIFT,
          vma->vm_end - vma->vm_start,
          vma->vm_page_prot);
}
