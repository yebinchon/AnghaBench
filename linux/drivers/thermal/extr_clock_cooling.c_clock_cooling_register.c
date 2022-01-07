
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_cooling_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int notifier_call; } ;
struct clock_cooling_device {int id; TYPE_1__ clk_rate_change_nb; struct thermal_cooling_device* clk; int clock_val; scalar_t__ clock_state; int freq_table; struct thermal_cooling_device* cdev; struct device* dev; int lock; } ;
typedef int dev_name ;


 int EINVAL ;
 int ENOMEM ;
 struct thermal_cooling_device* ERR_CAST (struct thermal_cooling_device*) ;
 struct thermal_cooling_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct thermal_cooling_device*) ;
 int THERMAL_NAME_LENGTH ;
 int clk_notifier_register (struct thermal_cooling_device*,TYPE_1__*) ;
 int clock_cooling_clock_notifier ;
 int clock_cooling_get_frequency (struct clock_cooling_device*,int ) ;
 int clock_cooling_ops ;
 int clock_ida ;
 int dev_pm_opp_init_cpufreq_table (struct device*,int *) ;
 struct thermal_cooling_device* devm_clk_get (struct device*,char const*) ;
 struct clock_cooling_device* devm_kzalloc (struct device*,int,int ) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int mutex_init (int *) ;
 int snprintf (char*,int,char*,int) ;
 struct thermal_cooling_device* thermal_cooling_device_register (char*,struct clock_cooling_device*,int *) ;

struct thermal_cooling_device *
clock_cooling_register(struct device *dev, const char *clock_name)
{
 struct thermal_cooling_device *cdev;
 struct clock_cooling_device *ccdev = ((void*)0);
 char dev_name[THERMAL_NAME_LENGTH];
 int ret = 0;

 ccdev = devm_kzalloc(dev, sizeof(*ccdev), GFP_KERNEL);
 if (!ccdev)
  return ERR_PTR(-ENOMEM);

 mutex_init(&ccdev->lock);
 ccdev->dev = dev;
 ccdev->clk = devm_clk_get(dev, clock_name);
 if (IS_ERR(ccdev->clk))
  return ERR_CAST(ccdev->clk);

 ret = ida_simple_get(&clock_ida, 0, 0, GFP_KERNEL);
 if (ret < 0)
  return ERR_PTR(ret);
 ccdev->id = ret;

 snprintf(dev_name, sizeof(dev_name), "thermal-clock-%d", ccdev->id);

 cdev = thermal_cooling_device_register(dev_name, ccdev,
            &clock_cooling_ops);
 if (IS_ERR(cdev)) {
  ida_simple_remove(&clock_ida, ccdev->id);
  return ERR_PTR(-EINVAL);
 }
 ccdev->cdev = cdev;
 ccdev->clk_rate_change_nb.notifier_call = clock_cooling_clock_notifier;


 ret = dev_pm_opp_init_cpufreq_table(dev, &ccdev->freq_table);
 if (ret) {
  ida_simple_remove(&clock_ida, ccdev->id);
  return ERR_PTR(ret);
 }
 ccdev->clock_state = 0;
 ccdev->clock_val = clock_cooling_get_frequency(ccdev, 0);

 clk_notifier_register(ccdev->clk, &ccdev->clk_rate_change_nb);

 return cdev;
}
