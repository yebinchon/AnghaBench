
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fb_info {int dummy; } ;


 int efifb_groups ;
 int framebuffer_release (struct fb_info*) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_groups (int *,int ) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int efifb_remove(struct platform_device *pdev)
{
 struct fb_info *info = platform_get_drvdata(pdev);

 unregister_framebuffer(info);
 sysfs_remove_groups(&pdev->dev.kobj, efifb_groups);
 framebuffer_release(info);

 return 0;
}
