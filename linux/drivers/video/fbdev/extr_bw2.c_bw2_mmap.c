
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {int smem_len; int smem_start; } ;
struct fb_info {TYPE_1__ fix; scalar_t__ par; } ;
struct bw2_par {int which_io; } ;


 int bw2_mmap_map ;
 int sbusfb_mmap_helper (int ,int ,int ,int ,struct vm_area_struct*) ;

__attribute__((used)) static int bw2_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 struct bw2_par *par = (struct bw2_par *)info->par;

 return sbusfb_mmap_helper(bw2_mmap_map,
      info->fix.smem_start, info->fix.smem_len,
      par->which_io,
      vma);
}
