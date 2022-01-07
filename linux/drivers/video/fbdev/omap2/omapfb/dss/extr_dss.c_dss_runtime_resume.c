
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dss_restore_context () ;
 int dss_set_min_bus_tput (struct device*,int) ;
 int pinctrl_pm_select_default_state (struct device*) ;

__attribute__((used)) static int dss_runtime_resume(struct device *dev)
{
 int r;

 pinctrl_pm_select_default_state(dev);
 r = dss_set_min_bus_tput(dev, 1000000000);
 if (r)
  return r;

 dss_restore_context();
 return 0;
}
