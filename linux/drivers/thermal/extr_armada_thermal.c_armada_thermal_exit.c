
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int tz; } ;
struct armada_drvdata {scalar_t__ type; TYPE_1__ data; } ;


 scalar_t__ LEGACY ;
 struct armada_drvdata* platform_get_drvdata (struct platform_device*) ;
 int thermal_zone_device_unregister (int ) ;

__attribute__((used)) static int armada_thermal_exit(struct platform_device *pdev)
{
 struct armada_drvdata *drvdata = platform_get_drvdata(pdev);

 if (drvdata->type == LEGACY)
  thermal_zone_device_unregister(drvdata->data.tz);

 return 0;
}
