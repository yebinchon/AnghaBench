
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int node; } ;
struct TYPE_2__ {int d; } ;


 int WARN_CONSOLE_UNLOCKED () ;
 int* con2fb_map ;
 int con2fb_release_oldinfo (int ,struct fb_info*,int *,int,int,int ) ;
 int fbcon_has_console_bind ;
 int fbcon_unbind () ;
 int first_fb_vc ;
 int last_fb_vc ;
 struct fb_info** registered_fb ;
 int search_fb_in_map (int) ;
 int set_con2fb_map (int,int,int ) ;
 TYPE_1__* vc_cons ;

void fbcon_fb_unbind(struct fb_info *info)
{
 int i, new_idx = -1, ret = 0;
 int idx = info->node;

 WARN_CONSOLE_UNLOCKED();

 if (!fbcon_has_console_bind)
  return;

 for (i = first_fb_vc; i <= last_fb_vc; i++) {
  if (con2fb_map[i] != idx &&
      con2fb_map[i] != -1) {
   new_idx = con2fb_map[i];
   break;
  }
 }

 if (new_idx != -1) {
  for (i = first_fb_vc; i <= last_fb_vc; i++) {
   if (con2fb_map[i] == idx)
    set_con2fb_map(i, new_idx, 0);
  }
 } else {
  struct fb_info *info = registered_fb[idx];







  for (i = first_fb_vc; i <= last_fb_vc; i++) {
   if (con2fb_map[i] == idx) {
    con2fb_map[i] = -1;
    if (!search_fb_in_map(idx)) {
     ret = con2fb_release_oldinfo(vc_cons[i].d,
             info, ((void*)0), i,
             idx, 0);
     if (ret) {
      con2fb_map[i] = idx;
      return;
     }
    }
   }
  }
  fbcon_unbind();
 }
}
