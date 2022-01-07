
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pm2fb_par {int dummy; } ;
struct fb_var_screeninfo {int yoffset; scalar_t__ xoffset; } ;
struct TYPE_2__ {int bits_per_pixel; int xres; } ;
struct fb_info {TYPE_1__ var; struct pm2fb_par* par; } ;


 int PM2R_SCREEN_BASE ;
 int WAIT_FIFO (struct pm2fb_par*,int) ;
 int pm2_WR (struct pm2fb_par*,int ,int) ;
 int to3264 (scalar_t__,int,int) ;

__attribute__((used)) static int pm2fb_pan_display(struct fb_var_screeninfo *var,
        struct fb_info *info)
{
 struct pm2fb_par *p = info->par;
 u32 base;
 u32 depth = (info->var.bits_per_pixel + 7) & ~7;
 u32 xres = (info->var.xres + 31) & ~31;

 depth = (depth > 32) ? 32 : depth;
 base = to3264(var->yoffset * xres + var->xoffset, depth, 1);
 WAIT_FIFO(p, 1);
 pm2_WR(p, PM2R_SCREEN_BASE, base);
 return 0;
}
