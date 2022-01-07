
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;
struct cpufreq_policy {int dummy; } ;


 struct thermal_cooling_device* __cpufreq_cooling_register (int *,struct cpufreq_policy*,int ) ;

struct thermal_cooling_device *
cpufreq_cooling_register(struct cpufreq_policy *policy)
{
 return __cpufreq_cooling_register(((void*)0), policy, 0);
}
