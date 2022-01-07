
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_pgoff; int vm_flags; int * vm_ops; int vm_page_prot; } ;
struct ocxlflash_context {int psn_size; } ;
struct file {struct ocxlflash_context* private_data; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int VM_IO ;
 int VM_PFNMAP ;
 int ocxlflash_vmops ;
 int pgprot_noncached (int ) ;
 int vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static int afu_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct ocxlflash_context *ctx = file->private_data;

 if ((vma_pages(vma) + vma->vm_pgoff) >
     (ctx->psn_size >> PAGE_SHIFT))
  return -EINVAL;

 vma->vm_flags |= VM_IO | VM_PFNMAP;
 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 vma->vm_ops = &ocxlflash_vmops;
 return 0;
}
