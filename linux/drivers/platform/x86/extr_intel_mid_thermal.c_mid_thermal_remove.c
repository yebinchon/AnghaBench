
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_info {TYPE_1__** tzd; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int devdata; } ;


 int MSIC_THERMAL_SENSORS ;
 int configure_adc (int ) ;
 int kfree (int ) ;
 struct platform_info* platform_get_drvdata (struct platform_device*) ;
 int thermal_zone_device_unregister (TYPE_1__*) ;

__attribute__((used)) static int mid_thermal_remove(struct platform_device *pdev)
{
 int i;
 struct platform_info *pinfo = platform_get_drvdata(pdev);

 for (i = 0; i < MSIC_THERMAL_SENSORS; i++) {
  kfree(pinfo->tzd[i]->devdata);
  thermal_zone_device_unregister(pinfo->tzd[i]);
 }


 return configure_adc(0);
}
