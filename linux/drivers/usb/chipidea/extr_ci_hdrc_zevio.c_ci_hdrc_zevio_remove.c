
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ci_hdrc_remove_device (struct platform_device*) ;
 struct platform_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ci_hdrc_zevio_remove(struct platform_device *pdev)
{
 struct platform_device *ci_pdev = platform_get_drvdata(pdev);

 ci_hdrc_remove_device(ci_pdev);

 return 0;
}
