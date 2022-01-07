
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; scalar_t__ vm_pgoff; int vm_page_prot; } ;
struct file {int dummy; } ;
struct aspeed_lpc_ctrl {int mem_base; scalar_t__ mem_size; } ;
typedef int pgprot_t ;


 int EAGAIN ;
 int EINVAL ;
 int PAGE_SHIFT ;
 struct aspeed_lpc_ctrl* file_aspeed_lpc_ctrl (struct file*) ;
 int pgprot_noncached (int ) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,unsigned long,scalar_t__,unsigned long,int ) ;

__attribute__((used)) static int aspeed_lpc_ctrl_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct aspeed_lpc_ctrl *lpc_ctrl = file_aspeed_lpc_ctrl(file);
 unsigned long vsize = vma->vm_end - vma->vm_start;
 pgprot_t prot = vma->vm_page_prot;

 if (vma->vm_pgoff + vsize > lpc_ctrl->mem_base + lpc_ctrl->mem_size)
  return -EINVAL;


 prot = pgprot_noncached(prot);

 if (remap_pfn_range(vma, vma->vm_start,
  (lpc_ctrl->mem_base >> PAGE_SHIFT) + vma->vm_pgoff,
  vsize, prot))
  return -EAGAIN;

 return 0;
}
