
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8xxx_mpp {int chip; } ;
struct platform_device {int dummy; } ;


 int gpiochip_remove (int *) ;
 struct pm8xxx_mpp* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pm8xxx_mpp_remove(struct platform_device *pdev)
{
 struct pm8xxx_mpp *pctrl = platform_get_drvdata(pdev);

 gpiochip_remove(&pctrl->chip);

 return 0;
}
