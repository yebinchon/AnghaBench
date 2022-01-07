
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vc_data {size_t vc_num; int vc_top; } ;
struct fbcon_ops {int (* clear ) (struct vc_data*,struct fb_info*,int ,int,int,int) ;} ;
struct fbcon_display {int vrows; int yscroll; } ;
struct fb_info {struct fbcon_ops* fbcon_par; } ;


 size_t* con2fb_map ;
 struct fbcon_display* fb_display ;
 int fbcon_clear_margins (struct vc_data*,int ) ;
 scalar_t__ fbcon_is_inactive (struct vc_data*,struct fb_info*) ;
 int logo_lines ;
 int real_y (struct fbcon_display*,int) ;
 struct fb_info** registered_fb ;
 int stub1 (struct vc_data*,struct fb_info*,int ,int,int,int) ;
 int stub2 (struct vc_data*,struct fb_info*,int ,int,int,int) ;
 int stub3 (struct vc_data*,struct fb_info*,int ,int,int,int) ;

__attribute__((used)) static void fbcon_clear(struct vc_data *vc, int sy, int sx, int height,
   int width)
{
 struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
 struct fbcon_ops *ops = info->fbcon_par;

 struct fbcon_display *p = &fb_display[vc->vc_num];
 u_int y_break;

 if (fbcon_is_inactive(vc, info))
  return;

 if (!height || !width)
  return;

 if (sy < vc->vc_top && vc->vc_top == logo_lines) {
  vc->vc_top = 0;






  fbcon_clear_margins(vc, 0);
 }



 y_break = p->vrows - p->yscroll;
 if (sy < y_break && sy + height - 1 >= y_break) {
  u_int b = y_break - sy;
  ops->clear(vc, info, real_y(p, sy), sx, b, width);
  ops->clear(vc, info, real_y(p, sy + b), sx, height - b,
     width);
 } else
  ops->clear(vc, info, real_y(p, sy), sx, height, width);
}
