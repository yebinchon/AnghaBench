
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; } ;
struct vc_data {scalar_t__ vc_mode; size_t vc_num; TYPE_1__ vc_font; } ;
struct fbcon_ops {scalar_t__ currcon; int rotate; } ;
struct fbcon_display {int dummy; } ;
struct TYPE_6__ {int xres; int yres; } ;
struct fb_info {TYPE_3__ var; struct fbcon_ops* fbcon_par; } ;
struct TYPE_5__ {struct vc_data* d; } ;


 int FBCON_SWAP (int ,int ,int ) ;
 scalar_t__ KD_TEXT ;
 size_t* con2fb_map ;
 scalar_t__ con_is_visible (struct vc_data*) ;
 struct fbcon_display* fb_display ;
 int fbcon_modechanged (struct fb_info*) ;
 int first_fb_vc ;
 int last_fb_vc ;
 struct fb_info** registered_fb ;
 int set_blitting_type (struct vc_data*,struct fb_info*) ;
 int var_to_display (struct fbcon_display*,TYPE_3__*,struct fb_info*) ;
 TYPE_2__* vc_cons ;
 int vc_resize (struct vc_data*,int,int) ;

__attribute__((used)) static void fbcon_set_all_vcs(struct fb_info *info)
{
 struct fbcon_ops *ops = info->fbcon_par;
 struct vc_data *vc;
 struct fbcon_display *p;
 int i, rows, cols, fg = -1;

 if (!ops || ops->currcon < 0)
  return;

 for (i = first_fb_vc; i <= last_fb_vc; i++) {
  vc = vc_cons[i].d;
  if (!vc || vc->vc_mode != KD_TEXT ||
      registered_fb[con2fb_map[i]] != info)
   continue;

  if (con_is_visible(vc)) {
   fg = i;
   continue;
  }

  p = &fb_display[vc->vc_num];
  set_blitting_type(vc, info);
  var_to_display(p, &info->var, info);
  cols = FBCON_SWAP(ops->rotate, info->var.xres, info->var.yres);
  rows = FBCON_SWAP(ops->rotate, info->var.yres, info->var.xres);
  cols /= vc->vc_font.width;
  rows /= vc->vc_font.height;
  vc_resize(vc, cols, rows);
 }

 if (fg != -1)
  fbcon_modechanged(info);
}
