
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mb862xxfb_par {int dummy; } ;
struct fb_var_screeninfo {int xoffset; int yoffset; } ;
struct TYPE_2__ {int xres_virtual; int yres_virtual; } ;
struct fb_info {TYPE_1__ var; struct mb862xxfb_par* par; } ;


 int GC_L0WH_L0WW ;
 int GC_L0WY_L0WX ;
 int disp ;
 int outreg (int ,int ,unsigned long) ;
 unsigned long pack (int ,int ) ;

__attribute__((used)) static int mb862xxfb_pan(struct fb_var_screeninfo *var,
    struct fb_info *info)
{
 struct mb862xxfb_par *par = info->par;
 unsigned long reg;

 reg = pack(var->yoffset, var->xoffset);
 outreg(disp, GC_L0WY_L0WX, reg);

 reg = pack(info->var.yres_virtual, info->var.xres_virtual);
 outreg(disp, GC_L0WH_L0WW, reg);
 return 0;
}
