
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int fbcon_modechanged (struct fb_info*) ;
 int fbcon_set_all_vcs (struct fb_info*) ;

void fbcon_update_vcs(struct fb_info *info, bool all)
{
 if (all)
  fbcon_set_all_vcs(info);
 else
  fbcon_modechanged(info);
}
