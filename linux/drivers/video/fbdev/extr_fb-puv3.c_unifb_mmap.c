
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_page_prot; } ;
struct TYPE_2__ {int smem_len; int smem_start; } ;
struct fb_info {TYPE_1__ fix; } ;


 int pgprot_noncached (int ) ;
 int vm_iomap_memory (struct vm_area_struct*,int ,int ) ;

int unifb_mmap(struct fb_info *info,
      struct vm_area_struct *vma)
{
 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

 return vm_iomap_memory(vma, info->fix.smem_start, info->fix.smem_len);
}
