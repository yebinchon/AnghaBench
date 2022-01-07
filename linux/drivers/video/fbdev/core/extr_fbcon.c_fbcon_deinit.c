
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; } ;
struct vc_data {size_t vc_num; scalar_t__ vc_screenbuf; scalar_t__ vc_hi_font_mask; TYPE_1__ vc_font; } ;
struct fbcon_ops {int flags; } ;
struct fbcon_display {int dummy; } ;
struct fb_info {int flags; struct fbcon_ops* fbcon_par; } ;


 int FBCON_FLAGS_INIT ;
 int FBINFO_MISC_FIRMWARE ;
 int* con2fb_map ;
 int con_is_bound (int *) ;
 scalar_t__ con_is_visible (struct vc_data*) ;
 int fb_con ;
 struct fbcon_display* fb_display ;
 int fbcon_del_cursor_timer (struct fb_info*) ;
 int fbcon_exit () ;
 int fbcon_free_font (struct fbcon_display*,int) ;
 struct fb_info** registered_fb ;
 int set_vc_hi_font (struct vc_data*,int) ;

__attribute__((used)) static void fbcon_deinit(struct vc_data *vc)
{
 struct fbcon_display *p = &fb_display[vc->vc_num];
 struct fb_info *info;
 struct fbcon_ops *ops;
 int idx;
 bool free_font = 1;

 idx = con2fb_map[vc->vc_num];

 if (idx == -1)
  goto finished;

 info = registered_fb[idx];

 if (!info)
  goto finished;

 if (info->flags & FBINFO_MISC_FIRMWARE)
  free_font = 0;
 ops = info->fbcon_par;

 if (!ops)
  goto finished;

 if (con_is_visible(vc))
  fbcon_del_cursor_timer(info);

 ops->flags &= ~FBCON_FLAGS_INIT;
finished:

 fbcon_free_font(p, free_font);
 if (free_font)
  vc->vc_font.data = ((void*)0);

 if (vc->vc_hi_font_mask && vc->vc_screenbuf)
  set_vc_hi_font(vc, 0);

 if (!con_is_bound(&fb_con))
  fbcon_exit();

 return;
}
