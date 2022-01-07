
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {size_t vc_num; } ;
struct fb_var_screeninfo {int activate; } ;
struct fbcon_ops {int graphics; int blank_state; int cursor_flash; struct fb_var_screeninfo var; } ;
struct fb_info {struct fb_var_screeninfo var; struct fbcon_ops* fbcon_par; } ;


 int CM_DRAW ;
 int CM_ERASE ;
 int FB_ACTIVATE_FORCE ;
 int FB_ACTIVATE_NOW ;
 int FB_BLANK_UNBLANK ;
 size_t* con2fb_map ;
 scalar_t__ fb_blank (struct fb_info*,int) ;
 int fb_set_var (struct fb_info*,struct fb_var_screeninfo*) ;
 int fbcon_add_cursor_timer (struct fb_info*) ;
 int fbcon_cursor (struct vc_data*,int ) ;
 int fbcon_del_cursor_timer (struct fb_info*) ;
 int fbcon_generic_blank (struct vc_data*,struct fb_info*,int) ;
 scalar_t__ fbcon_is_inactive (struct vc_data*,struct fb_info*) ;
 struct fb_info** registered_fb ;
 int update_screen (struct vc_data*) ;

__attribute__((used)) static int fbcon_blank(struct vc_data *vc, int blank, int mode_switch)
{
 struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
 struct fbcon_ops *ops = info->fbcon_par;

 if (mode_switch) {
  struct fb_var_screeninfo var = info->var;

  ops->graphics = 1;

  if (!blank) {
   var.activate = FB_ACTIVATE_NOW | FB_ACTIVATE_FORCE;
   fb_set_var(info, &var);
   ops->graphics = 0;
   ops->var = info->var;
  }
 }

  if (!fbcon_is_inactive(vc, info)) {
  if (ops->blank_state != blank) {
   ops->blank_state = blank;
   fbcon_cursor(vc, blank ? CM_ERASE : CM_DRAW);
   ops->cursor_flash = (!blank);

   if (fb_blank(info, blank))
    fbcon_generic_blank(vc, info, blank);
  }

  if (!blank)
   update_screen(vc);
 }

 if (mode_switch || fbcon_is_inactive(vc, info) ||
     ops->blank_state != FB_BLANK_UNBLANK)
  fbcon_del_cursor_timer(info);
 else
  fbcon_add_cursor_timer(info);

 return 0;
}
