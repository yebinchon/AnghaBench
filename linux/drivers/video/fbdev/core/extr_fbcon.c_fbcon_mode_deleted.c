
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbcon_display {int mode; } ;
struct fb_videomode {int dummy; } ;
struct fb_info {int dummy; } ;


 int* con2fb_map ;
 struct fbcon_display* fb_display ;
 scalar_t__ fb_mode_is_equal (int ,struct fb_videomode*) ;
 int first_fb_vc ;
 int last_fb_vc ;
 struct fb_info** registered_fb ;

int fbcon_mode_deleted(struct fb_info *info,
         struct fb_videomode *mode)
{
 struct fb_info *fb_info;
 struct fbcon_display *p;
 int i, j, found = 0;


 for (i = first_fb_vc; i <= last_fb_vc; i++) {
  j = con2fb_map[i];
  if (j == -1)
   continue;
  fb_info = registered_fb[j];
  if (fb_info != info)
   continue;
  p = &fb_display[i];
  if (!p || !p->mode)
   continue;
  if (fb_mode_is_equal(p->mode, mode)) {
   found = 1;
   break;
  }
 }
 return found;
}
