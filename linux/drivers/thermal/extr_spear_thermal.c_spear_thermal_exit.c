
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct spear_thermal_dev* devdata; } ;
struct spear_thermal_dev {unsigned int flags; int clk; int thermal_base; } ;
struct platform_device {int dummy; } ;


 int clk_disable (int ) ;
 struct thermal_zone_device* platform_get_drvdata (struct platform_device*) ;
 unsigned int readl_relaxed (int ) ;
 int thermal_zone_device_unregister (struct thermal_zone_device*) ;
 int writel_relaxed (unsigned int,int ) ;

__attribute__((used)) static int spear_thermal_exit(struct platform_device *pdev)
{
 unsigned int actual_mask = 0;
 struct thermal_zone_device *spear_thermal = platform_get_drvdata(pdev);
 struct spear_thermal_dev *stdev = spear_thermal->devdata;

 thermal_zone_device_unregister(spear_thermal);


 actual_mask = readl_relaxed(stdev->thermal_base);
 writel_relaxed(actual_mask & ~stdev->flags, stdev->thermal_base);

 clk_disable(stdev->clk);

 return 0;
}
