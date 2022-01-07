
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct grvga_par {TYPE_1__* regs; } ;
struct fb_var_screeninfo {scalar_t__ xoffset; int yoffset; } ;
struct fb_fix_screeninfo {unsigned long smem_start; int line_length; } ;
struct fb_info {struct fb_fix_screeninfo fix; struct grvga_par* par; } ;
struct TYPE_2__ {int fb_pos; } ;


 int EINVAL ;
 int __raw_writel (unsigned long,int *) ;

__attribute__((used)) static int grvga_pan_display(struct fb_var_screeninfo *var,
        struct fb_info *info)
{
 struct grvga_par *par = info->par;
 struct fb_fix_screeninfo *fix = &info->fix;
 u32 base_addr;

 if (var->xoffset != 0)
  return -EINVAL;

 base_addr = fix->smem_start + (var->yoffset * fix->line_length);
 base_addr &= ~3UL;


 __raw_writel(base_addr,
       &par->regs->fb_pos);

 return 0;
}
