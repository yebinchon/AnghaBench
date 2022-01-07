
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int node; } ;


 int FB_MAX ;
 scalar_t__ WARN_ON (int) ;
 int console_lock () ;
 int console_unlock () ;
 int fbcon_fb_unbind (struct fb_info*) ;
 int lock_fb_info (struct fb_info*) ;
 struct fb_info** registered_fb ;
 int unlock_fb_info (struct fb_info*) ;

__attribute__((used)) static void unbind_console(struct fb_info *fb_info)
{
 int i = fb_info->node;

 if (WARN_ON(i < 0 || i >= FB_MAX || registered_fb[i] != fb_info))
  return;

 console_lock();
 lock_fb_info(fb_info);
 fbcon_fb_unbind(fb_info);
 unlock_fb_info(fb_info);
 console_unlock();
}
