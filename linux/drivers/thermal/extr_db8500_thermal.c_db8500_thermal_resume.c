
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct db8500_thermal_zone {int dummy; } ;


 int PRCMU_DEFAULT_LOW_TEMP ;
 int THERMAL_TREND_STABLE ;
 int * db8500_thermal_points ;
 int db8500_thermal_update_config (struct db8500_thermal_zone*,int ,int ,int ,int ) ;
 struct db8500_thermal_zone* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int db8500_thermal_resume(struct platform_device *pdev)
{
 struct db8500_thermal_zone *th = platform_get_drvdata(pdev);


 db8500_thermal_update_config(th, 0, THERMAL_TREND_STABLE,
         PRCMU_DEFAULT_LOW_TEMP,
         db8500_thermal_points[0]);

 return 0;
}
