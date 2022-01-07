
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dss_save_context () ;
 int dss_set_min_bus_tput (struct device*,int ) ;
 int pinctrl_pm_select_sleep_state (struct device*) ;

__attribute__((used)) static int dss_runtime_suspend(struct device *dev)
{
 dss_save_context();
 dss_set_min_bus_tput(dev, 0);

 pinctrl_pm_select_sleep_state(dev);

 return 0;
}
