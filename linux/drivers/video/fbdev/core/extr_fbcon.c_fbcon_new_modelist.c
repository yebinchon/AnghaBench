
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vc_data {int vc_num; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int modelist; } ;
struct TYPE_5__ {int mode; } ;
struct TYPE_4__ {struct vc_data* d; } ;


 size_t* con2fb_map ;
 int display_to_var (struct fb_var_screeninfo*,TYPE_2__*) ;
 TYPE_2__* fb_display ;
 struct fb_videomode* fb_find_nearest_mode (int ,int *) ;
 int fb_videomode_to_var (struct fb_var_screeninfo*,struct fb_videomode const*) ;
 int fbcon_set_disp (struct fb_info*,struct fb_var_screeninfo*,int ) ;
 int first_fb_vc ;
 int last_fb_vc ;
 struct fb_info** registered_fb ;
 TYPE_1__* vc_cons ;

void fbcon_new_modelist(struct fb_info *info)
{
 int i;
 struct vc_data *vc;
 struct fb_var_screeninfo var;
 const struct fb_videomode *mode;

 for (i = first_fb_vc; i <= last_fb_vc; i++) {
  if (registered_fb[con2fb_map[i]] != info)
   continue;
  if (!fb_display[i].mode)
   continue;
  vc = vc_cons[i].d;
  display_to_var(&var, &fb_display[i]);
  mode = fb_find_nearest_mode(fb_display[i].mode,
         &info->modelist);
  fb_videomode_to_var(&var, mode);
  fbcon_set_disp(info, &var, vc->vc_num);
 }
}
