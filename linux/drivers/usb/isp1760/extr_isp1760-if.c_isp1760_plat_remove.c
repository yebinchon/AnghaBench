
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int isp1760_unregister (int *) ;

__attribute__((used)) static int isp1760_plat_remove(struct platform_device *pdev)
{
 isp1760_unregister(&pdev->dev);

 return 0;
}
