
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct cpufreq_cooling_device* devdata; } ;
struct cpufreq_cooling_device {struct cpufreq_cooling_device* freq_table; struct cpufreq_cooling_device* idle_time; int id; int qos_req; int node; } ;


 int cooling_list_lock ;
 int cpufreq_ida ;
 int freq_qos_remove_request (int *) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct cpufreq_cooling_device*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int thermal_cooling_device_unregister (struct thermal_cooling_device*) ;

void cpufreq_cooling_unregister(struct thermal_cooling_device *cdev)
{
 struct cpufreq_cooling_device *cpufreq_cdev;

 if (!cdev)
  return;

 cpufreq_cdev = cdev->devdata;

 mutex_lock(&cooling_list_lock);
 list_del(&cpufreq_cdev->node);
 mutex_unlock(&cooling_list_lock);

 thermal_cooling_device_unregister(cdev);
 freq_qos_remove_request(&cpufreq_cdev->qos_req);
 ida_simple_remove(&cpufreq_ida, cpufreq_cdev->id);
 kfree(cpufreq_cdev->idle_time);
 kfree(cpufreq_cdev->freq_table);
 kfree(cpufreq_cdev);
}
