
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thermal_zone_device {int dummy; } ;
struct thermal_cooling_device {struct cpufreq_cooling_device* devdata; } ;
struct cpufreq_policy {int related_cpus; } ;
struct cpufreq_cooling_device {scalar_t__ last_load; struct cpufreq_policy* policy; } ;


 unsigned int cpu_power_to_freq (struct cpufreq_cooling_device*,int) ;
 unsigned long get_level (struct cpufreq_cooling_device*,unsigned int) ;
 int trace_thermal_power_cpu_limit (int ,unsigned int,unsigned long,int) ;

__attribute__((used)) static int cpufreq_power2state(struct thermal_cooling_device *cdev,
          struct thermal_zone_device *tz, u32 power,
          unsigned long *state)
{
 unsigned int target_freq;
 u32 last_load, normalised_power;
 struct cpufreq_cooling_device *cpufreq_cdev = cdev->devdata;
 struct cpufreq_policy *policy = cpufreq_cdev->policy;

 last_load = cpufreq_cdev->last_load ?: 1;
 normalised_power = (power * 100) / last_load;
 target_freq = cpu_power_to_freq(cpufreq_cdev, normalised_power);

 *state = get_level(cpufreq_cdev, target_freq);
 trace_thermal_power_cpu_limit(policy->related_cpus, target_freq, *state,
          power);
 return 0;
}
