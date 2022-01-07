
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct freq_table {int frequency; int power; } ;
struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;
struct cpufreq_cooling_device {int max_level; TYPE_1__* policy; struct freq_table* freq_table; } ;
struct TYPE_2__ {int cpu; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct dev_pm_opp*) ;
 int dev_err (struct device*,char*,unsigned long) ;
 struct dev_pm_opp* dev_pm_opp_find_freq_ceil (struct device*,unsigned long*) ;
 int dev_pm_opp_get_opp_count (struct device*) ;
 int dev_pm_opp_get_voltage (struct dev_pm_opp*) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;
 int dev_warn (struct device*,char*) ;
 int do_div (int,int) ;
 struct device* get_cpu_device (int) ;
 int pr_warn (char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int update_freq_table(struct cpufreq_cooling_device *cpufreq_cdev,
        u32 capacitance)
{
 struct freq_table *freq_table = cpufreq_cdev->freq_table;
 struct dev_pm_opp *opp;
 struct device *dev = ((void*)0);
 int num_opps = 0, cpu = cpufreq_cdev->policy->cpu, i;

 dev = get_cpu_device(cpu);
 if (unlikely(!dev)) {
  pr_warn("No cpu device for cpu %d\n", cpu);
  return -ENODEV;
 }

 num_opps = dev_pm_opp_get_opp_count(dev);
 if (num_opps < 0)
  return num_opps;





 if (num_opps != cpufreq_cdev->max_level + 1) {
  dev_warn(dev, "Number of OPPs not matching with max_levels\n");
  return -EINVAL;
 }

 for (i = 0; i <= cpufreq_cdev->max_level; i++) {
  unsigned long freq = freq_table[i].frequency * 1000;
  u32 freq_mhz = freq_table[i].frequency / 1000;
  u64 power;
  u32 voltage_mv;





  opp = dev_pm_opp_find_freq_ceil(dev, &freq);
  if (IS_ERR(opp)) {
   dev_err(dev, "failed to get opp for %lu frequency\n",
    freq);
   return -EINVAL;
  }

  voltage_mv = dev_pm_opp_get_voltage(opp) / 1000;
  dev_pm_opp_put(opp);





  power = (u64)capacitance * freq_mhz * voltage_mv * voltage_mv;
  do_div(power, 1000000000);


  freq_table[i].power = power;
 }

 return 0;
}
