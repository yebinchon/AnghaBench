
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct thermal_zone_device {int dummy; } ;
struct thermal_cooling_device {struct cpufreq_cooling_device* devdata; } ;
struct cpufreq_cooling_device {unsigned long max_level; TYPE_2__* freq_table; TYPE_1__* policy; } ;
struct TYPE_4__ {unsigned int frequency; } ;
struct TYPE_3__ {int cpus; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 unsigned int cpu_freq_to_power (struct cpufreq_cooling_device*,unsigned int) ;
 unsigned int cpumask_weight (int ) ;

__attribute__((used)) static int cpufreq_state2power(struct thermal_cooling_device *cdev,
          struct thermal_zone_device *tz,
          unsigned long state, u32 *power)
{
 unsigned int freq, num_cpus;
 struct cpufreq_cooling_device *cpufreq_cdev = cdev->devdata;


 if (WARN_ON(state > cpufreq_cdev->max_level))
  return -EINVAL;

 num_cpus = cpumask_weight(cpufreq_cdev->policy->cpus);

 freq = cpufreq_cdev->freq_table[state].frequency;
 *power = cpu_freq_to_power(cpufreq_cdev, freq) * num_cpus;

 return 0;
}
