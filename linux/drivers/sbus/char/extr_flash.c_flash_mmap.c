
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; unsigned long vm_pgoff; unsigned long vm_end; unsigned long vm_start; int vm_page_prot; } ;
struct file {int dummy; } ;
struct TYPE_2__ {unsigned long read_base; unsigned long write_base; unsigned long read_size; unsigned long write_size; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENXIO ;
 unsigned long PAGE_SHIFT ;
 int VM_READ ;
 int VM_WRITE ;
 TYPE_1__ flash ;
 int flash_lock ;
 scalar_t__ io_remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 int pgprot_noncached (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
flash_mmap(struct file *file, struct vm_area_struct *vma)
{
 unsigned long addr;
 unsigned long size;

 spin_lock(&flash_lock);
 if (flash.read_base == flash.write_base) {
  addr = flash.read_base;
  size = flash.read_size;
 } else {
  if ((vma->vm_flags & VM_READ) &&
      (vma->vm_flags & VM_WRITE)) {
   spin_unlock(&flash_lock);
   return -EINVAL;
  }
  if (vma->vm_flags & VM_READ) {
   addr = flash.read_base;
   size = flash.read_size;
  } else if (vma->vm_flags & VM_WRITE) {
   addr = flash.write_base;
   size = flash.write_size;
  } else {
   spin_unlock(&flash_lock);
   return -ENXIO;
  }
 }
 spin_unlock(&flash_lock);

 if ((vma->vm_pgoff << PAGE_SHIFT) > size)
  return -ENXIO;
 addr = vma->vm_pgoff + (addr >> PAGE_SHIFT);

 if (vma->vm_end - (vma->vm_start + (vma->vm_pgoff << PAGE_SHIFT)) > size)
  size = vma->vm_end - (vma->vm_start + (vma->vm_pgoff << PAGE_SHIFT));

 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

 if (io_remap_pfn_range(vma, vma->vm_start, addr, size, vma->vm_page_prot))
  return -EAGAIN;

 return 0;
}
