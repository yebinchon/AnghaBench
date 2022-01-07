
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int state; } ;


 int FBINFO_STATE_RUNNING ;
 int FBINFO_STATE_SUSPENDED ;
 int WARN_CONSOLE_UNLOCKED () ;
 int fbcon_resumed (struct fb_info*) ;
 int fbcon_suspended (struct fb_info*) ;

void fb_set_suspend(struct fb_info *info, int state)
{
 WARN_CONSOLE_UNLOCKED();

 if (state) {
  fbcon_suspended(info);
  info->state = FBINFO_STATE_SUSPENDED;
 } else {
  info->state = FBINFO_STATE_RUNNING;
  fbcon_resumed(info);
 }
}
