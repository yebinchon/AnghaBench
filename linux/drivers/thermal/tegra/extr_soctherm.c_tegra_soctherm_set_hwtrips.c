
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thermal_zone_device {TYPE_1__* ops; } ;
struct thermal_cooling_device {int type; } ;
struct tegra_tsensor_group {int name; int id; } ;
struct tegra_soctherm {TYPE_2__* throt_cfgs; } ;
struct soctherm_throt_cfg {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct thermal_cooling_device* cdev; int init; } ;
struct TYPE_3__ {scalar_t__ (* get_crit_temp ) (struct thermal_zone_device*,int*) ;} ;


 int THROTTLE_OC1 ;
 int THROTTLE_SIZE ;
 int dev_err (struct device*,char*,int ) ;
 struct tegra_soctherm* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*,int ,...) ;
 struct soctherm_throt_cfg* find_throttle_cfg_by_name (struct tegra_soctherm*,int ) ;
 int get_hot_temp (struct thermal_zone_device*,int*,int*) ;
 scalar_t__ get_thermal_instance (struct thermal_zone_device*,struct thermal_cooling_device*,int) ;
 int max_high_temp ;
 int min_low_temp ;
 scalar_t__ stub1 (struct thermal_zone_device*,int*) ;
 int thermtrip_program (struct device*,struct tegra_tsensor_group const*,int) ;
 int throttrip_program (struct device*,struct tegra_tsensor_group const*,struct soctherm_throt_cfg*,int) ;
 int tsensor_group_thermtrip_get (struct tegra_soctherm*,int ) ;

__attribute__((used)) static int tegra_soctherm_set_hwtrips(struct device *dev,
          const struct tegra_tsensor_group *sg,
          struct thermal_zone_device *tz)
{
 struct tegra_soctherm *ts = dev_get_drvdata(dev);
 struct soctherm_throt_cfg *stc;
 int i, trip, temperature, ret;


 temperature = tsensor_group_thermtrip_get(ts, sg->id);
 if (min_low_temp == temperature)
  if (tz->ops->get_crit_temp(tz, &temperature))
   temperature = max_high_temp;

 ret = thermtrip_program(dev, sg, temperature);
 if (ret) {
  dev_err(dev, "thermtrip: %s: error during enable\n", sg->name);
  return ret;
 }

 dev_info(dev, "thermtrip: will shut down when %s reaches %d mC\n",
   sg->name, temperature);

 ret = get_hot_temp(tz, &trip, &temperature);
 if (ret) {
  dev_info(dev, "throttrip: %s: missing hot temperature\n",
    sg->name);
  return 0;
 }

 for (i = 0; i < THROTTLE_OC1; i++) {
  struct thermal_cooling_device *cdev;

  if (!ts->throt_cfgs[i].init)
   continue;

  cdev = ts->throt_cfgs[i].cdev;
  if (get_thermal_instance(tz, cdev, trip))
   stc = find_throttle_cfg_by_name(ts, cdev->type);
  else
   continue;

  ret = throttrip_program(dev, sg, stc, temperature);
  if (ret) {
   dev_err(dev, "throttrip: %s: error during enable\n",
    sg->name);
   return ret;
  }

  dev_info(dev,
    "throttrip: will throttle when %s reaches %d mC\n",
    sg->name, temperature);
  break;
 }

 if (i == THROTTLE_SIZE)
  dev_info(dev, "throttrip: %s: missing throttle cdev\n",
    sg->name);

 return 0;
}
