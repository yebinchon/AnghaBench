
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct ffb_par {int fbsize; int physbase; } ;
struct fb_info {scalar_t__ par; } ;


 int ffb_mmap_map ;
 int sbusfb_mmap_helper (int ,int ,int ,int ,struct vm_area_struct*) ;

__attribute__((used)) static int ffb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 struct ffb_par *par = (struct ffb_par *)info->par;

 return sbusfb_mmap_helper(ffb_mmap_map,
      par->physbase, par->fbsize,
      0, vma);
}
