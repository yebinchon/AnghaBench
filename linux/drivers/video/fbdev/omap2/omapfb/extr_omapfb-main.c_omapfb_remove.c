
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omapfb2_device {int dummy; } ;


 int omapdss_compat_uninit () ;
 int omapfb_free_resources (struct omapfb2_device*) ;
 int omapfb_remove_sysfs (struct omapfb2_device*) ;
 struct omapfb2_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int omapfb_remove(struct platform_device *pdev)
{
 struct omapfb2_device *fbdev = platform_get_drvdata(pdev);



 omapfb_remove_sysfs(fbdev);

 omapfb_free_resources(fbdev);

 omapdss_compat_uninit();

 return 0;
}
