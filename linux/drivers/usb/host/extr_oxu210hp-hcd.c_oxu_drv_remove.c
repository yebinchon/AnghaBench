
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct oxu_info {int * hcd; } ;


 int oxu_remove (struct platform_device*,int ) ;
 struct oxu_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int oxu_drv_remove(struct platform_device *pdev)
{
 struct oxu_info *info = platform_get_drvdata(pdev);

 oxu_remove(pdev, info->hcd[0]);
 oxu_remove(pdev, info->hcd[1]);

 return 0;
}
