
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_pgoff; int vm_start; } ;
struct TYPE_2__ {scalar_t__ smem_start; int smem_len; } ;
struct fb_info {TYPE_1__ fix; int device; } ;


 int PAGE_SHIFT ;
 int dev_dbg (int ,char*,scalar_t__,int ) ;
 int vm_iomap_memory (struct vm_area_struct*,scalar_t__,int ) ;

__attribute__((used)) static int ps3fb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 int r;

 r = vm_iomap_memory(vma, info->fix.smem_start, info->fix.smem_len);

 dev_dbg(info->device, "ps3fb: mmap framebuffer P(%lx)->V(%lx)\n",
  info->fix.smem_start + (vma->vm_pgoff << PAGE_SHIFT),
  vma->vm_start);

 return r;
}
