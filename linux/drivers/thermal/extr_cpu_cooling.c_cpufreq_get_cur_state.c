
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct cpufreq_cooling_device* devdata; } ;
struct cpufreq_cooling_device {unsigned long cpufreq_state; } ;



__attribute__((used)) static int cpufreq_get_cur_state(struct thermal_cooling_device *cdev,
     unsigned long *state)
{
 struct cpufreq_cooling_device *cpufreq_cdev = cdev->devdata;

 *state = cpufreq_cdev->cpufreq_state;

 return 0;
}
