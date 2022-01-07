
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int node; } ;


 int WARN_CONSOLE_UNLOCKED () ;
 int* con2fb_map_boot ;
 scalar_t__ deferred_takeover ;
 int do_fbcon_takeover (int) ;
 int fbcon_select_primary (struct fb_info*) ;
 int first_fb_vc ;
 int info_idx ;
 int last_fb_vc ;
 int pr_info (char*) ;
 int set_con2fb_map (int,int,int ) ;

int fbcon_fb_registered(struct fb_info *info)
{
 int ret = 0, i, idx;

 WARN_CONSOLE_UNLOCKED();

 idx = info->node;
 fbcon_select_primary(info);

 if (deferred_takeover) {
  pr_info("fbcon: Deferring console take-over\n");
  return 0;
 }

 if (info_idx == -1) {
  for (i = first_fb_vc; i <= last_fb_vc; i++) {
   if (con2fb_map_boot[i] == idx) {
    info_idx = idx;
    break;
   }
  }

  if (info_idx != -1)
   ret = do_fbcon_takeover(1);
 } else {
  for (i = first_fb_vc; i <= last_fb_vc; i++) {
   if (con2fb_map_boot[i] == idx)
    set_con2fb_map(i, idx, 0);
  }
 }

 return ret;
}
