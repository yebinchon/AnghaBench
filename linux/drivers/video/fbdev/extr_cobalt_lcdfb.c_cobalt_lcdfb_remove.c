
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fb_info {int dummy; } ;


 int framebuffer_release (struct fb_info*) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int cobalt_lcdfb_remove(struct platform_device *dev)
{
 struct fb_info *info;

 info = platform_get_drvdata(dev);
 if (info) {
  unregister_framebuffer(info);
  framebuffer_release(info);
 }

 return 0;
}
