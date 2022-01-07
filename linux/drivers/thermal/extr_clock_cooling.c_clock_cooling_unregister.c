
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct clock_cooling_device* devdata; } ;
struct clock_cooling_device {int id; int cdev; int freq_table; int dev; int clk_rate_change_nb; int clk; } ;


 int clk_notifier_unregister (int ,int *) ;
 int clock_ida ;
 int dev_pm_opp_free_cpufreq_table (int ,int *) ;
 int ida_simple_remove (int *,int ) ;
 int thermal_cooling_device_unregister (int ) ;

void clock_cooling_unregister(struct thermal_cooling_device *cdev)
{
 struct clock_cooling_device *ccdev;

 if (!cdev)
  return;

 ccdev = cdev->devdata;

 clk_notifier_unregister(ccdev->clk, &ccdev->clk_rate_change_nb);
 dev_pm_opp_free_cpufreq_table(ccdev->dev, &ccdev->freq_table);

 thermal_cooling_device_unregister(ccdev->cdev);
 ida_simple_remove(&clock_ida, ccdev->id);
}
