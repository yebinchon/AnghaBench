
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long long u64 ;
typedef int u32 ;
struct pxa168fb_mach_info {int dummy; } ;
struct pxa168fb_info {int dev; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int xres_virtual; int xres; int yres_virtual; int bits_per_pixel; int yres; int left_margin; int right_margin; int hsync_len; int upper_margin; int lower_margin; int vsync_len; int pixclock; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; struct fb_var_screeninfo var; int modelist; struct pxa168fb_info* par; } ;


 int DEFAULT_REFRESH ;
 int dev_dbg (int ,char*,int,int) ;
 int do_div (long long,int) ;
 struct fb_videomode* fb_find_best_mode (struct fb_var_screeninfo*,int *) ;
 int fb_videomode_to_var (struct fb_var_screeninfo*,struct fb_videomode const*) ;

__attribute__((used)) static int pxa168fb_init_mode(struct fb_info *info,
         struct pxa168fb_mach_info *mi)
{
 struct pxa168fb_info *fbi = info->par;
 struct fb_var_screeninfo *var = &info->var;
 int ret = 0;
 u32 total_w, total_h, refresh;
 u64 div_result;
 const struct fb_videomode *m;




 refresh = DEFAULT_REFRESH;


 m = fb_find_best_mode(&info->var, &info->modelist);
 if (m)
  fb_videomode_to_var(&info->var, m);


 var->xres_virtual = var->xres;
 var->yres_virtual = info->fix.smem_len /
  (var->xres_virtual * (var->bits_per_pixel >> 3));
 dev_dbg(fbi->dev, "pxa168fb: find best mode: res = %dx%d\n",
    var->xres, var->yres);


 total_w = var->xres + var->left_margin + var->right_margin +
    var->hsync_len;
 total_h = var->yres + var->upper_margin + var->lower_margin +
    var->vsync_len;

 div_result = 1000000000000ll;
 do_div(div_result, total_w * total_h * refresh);
 var->pixclock = (u32)div_result;

 return ret;
}
