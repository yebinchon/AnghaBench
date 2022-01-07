
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_tm_dev {int dummy; } ;
struct platform_device {int dummy; } ;


 struct uniphier_tm_dev* platform_get_drvdata (struct platform_device*) ;
 int uniphier_tm_disable_sensor (struct uniphier_tm_dev*) ;

__attribute__((used)) static int uniphier_tm_remove(struct platform_device *pdev)
{
 struct uniphier_tm_dev *tdev = platform_get_drvdata(pdev);


 uniphier_tm_disable_sensor(tdev);

 return 0;
}
