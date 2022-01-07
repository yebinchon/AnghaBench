
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; int mode; } ;
struct sh_mobile_lcdc_chan {int use_count; TYPE_1__ display; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int activate; int height; int width; } ;
struct fb_info {struct fb_var_screeninfo var; int fbcon_par; struct sh_mobile_lcdc_chan* par; } ;


 int FB_ACTIVATE_NOW ;
 scalar_t__ fb_mode_is_equal (int *,struct fb_videomode*) ;
 scalar_t__ fb_set_var (struct fb_info*,struct fb_var_screeninfo*) ;
 int fb_var_to_videomode (struct fb_videomode*,struct fb_var_screeninfo*) ;
 int fb_videomode_to_var (struct fb_var_screeninfo*,int *) ;
 int fbcon_update_vcs (struct fb_info*,int) ;

__attribute__((used)) static void sh_mobile_fb_reconfig(struct fb_info *info)
{
 struct sh_mobile_lcdc_chan *ch = info->par;
 struct fb_var_screeninfo var;
 struct fb_videomode mode;

 if (ch->use_count > 1 || (ch->use_count == 1 && !info->fbcon_par))

  return;

 fb_var_to_videomode(&mode, &info->var);

 if (fb_mode_is_equal(&ch->display.mode, &mode))
  return;


 var = info->var;
 fb_videomode_to_var(&var, &ch->display.mode);
 var.width = ch->display.width;
 var.height = ch->display.height;
 var.activate = FB_ACTIVATE_NOW;

 if (fb_set_var(info, &var) < 0)

  return;

 fbcon_update_vcs(info, 1);
}
