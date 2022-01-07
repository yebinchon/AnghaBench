
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
typedef unsigned long uint32_t ;
struct vm_fault {int pgoff; struct page* page; TYPE_2__* vma; } ;
struct uio_info {TYPE_1__* mem; } ;
struct tcmu_dev {unsigned long data_off; struct uio_info uio_info; } ;
struct page {int dummy; } ;
struct TYPE_4__ {struct tcmu_dev* vm_private_data; } ;
struct TYPE_3__ {scalar_t__ addr; } ;


 unsigned long DATA_BLOCK_SIZE ;
 int PAGE_SHIFT ;
 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;
 int tcmu_find_mem_index (TYPE_2__*) ;
 struct page* tcmu_try_get_block_page (struct tcmu_dev*,unsigned long) ;
 struct page* vmalloc_to_page (void*) ;

__attribute__((used)) static vm_fault_t tcmu_vma_fault(struct vm_fault *vmf)
{
 struct tcmu_dev *udev = vmf->vma->vm_private_data;
 struct uio_info *info = &udev->uio_info;
 struct page *page;
 unsigned long offset;
 void *addr;

 int mi = tcmu_find_mem_index(vmf->vma);
 if (mi < 0)
  return VM_FAULT_SIGBUS;





 offset = (vmf->pgoff - mi) << PAGE_SHIFT;

 if (offset < udev->data_off) {

  addr = (void *)(unsigned long)info->mem[mi].addr + offset;
  page = vmalloc_to_page(addr);
 } else {
  uint32_t dbi;


  dbi = (offset - udev->data_off) / DATA_BLOCK_SIZE;
  page = tcmu_try_get_block_page(udev, dbi);
  if (!page)
   return VM_FAULT_SIGBUS;
 }

 get_page(page);
 vmf->page = page;
 return 0;
}
