
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct gpd_pocket_fan_data {int work; } ;


 int cancel_delayed_work_sync (int *) ;
 struct gpd_pocket_fan_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int gpd_pocket_fan_remove(struct platform_device *pdev)
{
 struct gpd_pocket_fan_data *fan = platform_get_drvdata(pdev);

 cancel_delayed_work_sync(&fan->work);
 return 0;
}
