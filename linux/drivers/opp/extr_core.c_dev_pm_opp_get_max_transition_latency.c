
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned long dev_pm_opp_get_max_clock_latency (struct device*) ;
 unsigned long dev_pm_opp_get_max_volt_latency (struct device*) ;

unsigned long dev_pm_opp_get_max_transition_latency(struct device *dev)
{
 return dev_pm_opp_get_max_volt_latency(dev) +
  dev_pm_opp_get_max_clock_latency(dev);
}
