
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_thermal_sensor {int regmap; int dev; TYPE_1__* cdata; } ;
struct TYPE_2__ {int sys_compat; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*) ;
 int syscon_regmap_lookup_by_compatible (int ) ;

__attribute__((used)) static int st_syscfg_regmap_init(struct st_thermal_sensor *sensor)
{
 sensor->regmap =
  syscon_regmap_lookup_by_compatible(sensor->cdata->sys_compat);
 if (IS_ERR(sensor->regmap)) {
  dev_err(sensor->dev, "failed to find syscfg regmap\n");
  return PTR_ERR(sensor->regmap);
 }

 return 0;
}
