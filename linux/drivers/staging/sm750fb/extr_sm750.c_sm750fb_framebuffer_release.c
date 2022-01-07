
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm750_dev {int fb_count; struct fb_info** fbinfo; } ;
struct fb_info {int dummy; } ;


 int framebuffer_release (struct fb_info*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void sm750fb_framebuffer_release(struct sm750_dev *sm750_dev)
{
 struct fb_info *fb_info;

 while (sm750_dev->fb_count) {
  fb_info = sm750_dev->fbinfo[sm750_dev->fb_count - 1];
  unregister_framebuffer(fb_info);
  framebuffer_release(fb_info);
  sm750_dev->fb_count--;
 }
}
