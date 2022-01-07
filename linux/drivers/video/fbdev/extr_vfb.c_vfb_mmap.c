
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_pgoff; } ;
struct TYPE_2__ {scalar_t__ smem_start; } ;
struct fb_info {TYPE_1__ fix; } ;


 int remap_vmalloc_range (struct vm_area_struct*,void*,int ) ;

__attribute__((used)) static int vfb_mmap(struct fb_info *info,
      struct vm_area_struct *vma)
{
 return remap_vmalloc_range(vma, (void *)info->fix.smem_start, vma->vm_pgoff);
}
