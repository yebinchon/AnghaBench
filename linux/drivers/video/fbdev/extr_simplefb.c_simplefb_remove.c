
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fb_info {int dummy; } ;


 int framebuffer_release (struct fb_info*) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int simplefb_remove(struct platform_device *pdev)
{
 struct fb_info *info = platform_get_drvdata(pdev);

 unregister_framebuffer(info);
 framebuffer_release(info);

 return 0;
}
