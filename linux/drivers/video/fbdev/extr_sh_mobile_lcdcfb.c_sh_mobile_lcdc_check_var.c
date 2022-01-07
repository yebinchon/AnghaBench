
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_lcdc_priv {scalar_t__ forced_fourcc; } ;
struct sh_mobile_lcdc_chan {TYPE_1__* cfg; struct sh_mobile_lcdc_priv* lcdc; } ;
struct fb_videomode {int xres; int yres; } ;
struct fb_var_screeninfo {int xres; int yres; } ;
struct fb_info {struct sh_mobile_lcdc_chan* par; } ;
struct TYPE_2__ {unsigned int num_modes; struct fb_videomode* lcd_modes; } ;


 int EINVAL ;
 int __sh_mobile_lcdc_check_var (struct fb_var_screeninfo*,struct fb_info*) ;
 int min (int,int) ;
 scalar_t__ sh_mobile_format_fourcc (struct fb_var_screeninfo*) ;

__attribute__((used)) static int sh_mobile_lcdc_check_var(struct fb_var_screeninfo *var,
        struct fb_info *info)
{
 struct sh_mobile_lcdc_chan *ch = info->par;
 struct sh_mobile_lcdc_priv *p = ch->lcdc;
 unsigned int best_dist = (unsigned int)-1;
 unsigned int best_xres = 0;
 unsigned int best_yres = 0;
 unsigned int i;
 int ret;






 for (i = 0; i < ch->cfg->num_modes; ++i) {
  const struct fb_videomode *mode = &ch->cfg->lcd_modes[i];
  unsigned int dist;


  if (var->xres > mode->xres || var->yres > mode->yres)
   continue;

  dist = var->xres * var->yres + mode->xres * mode->yres
       - 2 * min(var->xres, mode->xres)
    * min(var->yres, mode->yres);

  if (dist < best_dist) {
   best_xres = mode->xres;
   best_yres = mode->yres;
   best_dist = dist;
  }
 }


 if (ch->cfg->num_modes != 0) {
  if (best_dist == (unsigned int)-1)
   return -EINVAL;

  var->xres = best_xres;
  var->yres = best_yres;
 }

 ret = __sh_mobile_lcdc_check_var(var, info);
 if (ret < 0)
  return ret;


 if (p->forced_fourcc &&
     p->forced_fourcc != sh_mobile_format_fourcc(var))
  return -EINVAL;

 return 0;
}
