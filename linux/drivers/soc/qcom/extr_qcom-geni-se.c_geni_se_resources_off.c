
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geni_se {int dev; } ;


 int geni_se_clks_off (struct geni_se*) ;
 scalar_t__ has_acpi_companion (int ) ;
 int pinctrl_pm_select_sleep_state (int ) ;

int geni_se_resources_off(struct geni_se *se)
{
 int ret;

 if (has_acpi_companion(se->dev))
  return 0;

 ret = pinctrl_pm_select_sleep_state(se->dev);
 if (ret)
  return ret;

 geni_se_clks_off(se);
 return 0;
}
