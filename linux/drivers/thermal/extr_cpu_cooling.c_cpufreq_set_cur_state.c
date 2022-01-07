
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_cooling_device {struct cpufreq_cooling_device* devdata; } ;
struct cpufreq_cooling_device {unsigned long max_level; unsigned long cpufreq_state; TYPE_1__* freq_table; int qos_req; } ;
struct TYPE_2__ {int frequency; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int freq_qos_update_request (int *,int ) ;

__attribute__((used)) static int cpufreq_set_cur_state(struct thermal_cooling_device *cdev,
     unsigned long state)
{
 struct cpufreq_cooling_device *cpufreq_cdev = cdev->devdata;


 if (WARN_ON(state > cpufreq_cdev->max_level))
  return -EINVAL;


 if (cpufreq_cdev->cpufreq_state == state)
  return 0;

 cpufreq_cdev->cpufreq_state = state;

 return freq_qos_update_request(&cpufreq_cdev->qos_req,
    cpufreq_cdev->freq_table[state].frequency);
}
