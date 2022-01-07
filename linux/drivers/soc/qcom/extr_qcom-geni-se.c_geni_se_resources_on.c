
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geni_se {int dev; } ;


 int geni_se_clks_off (struct geni_se*) ;
 int geni_se_clks_on (struct geni_se*) ;
 scalar_t__ has_acpi_companion (int ) ;
 int pinctrl_pm_select_default_state (int ) ;

int geni_se_resources_on(struct geni_se *se)
{
 int ret;

 if (has_acpi_companion(se->dev))
  return 0;

 ret = geni_se_clks_on(se);
 if (ret)
  return ret;

 ret = pinctrl_pm_select_default_state(se->dev);
 if (ret)
  geni_se_clks_off(se);

 return ret;
}
