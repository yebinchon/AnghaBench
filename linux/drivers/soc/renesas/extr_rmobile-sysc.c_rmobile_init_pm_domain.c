
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int flags; int power_on; int power_off; int detach_dev; int attach_dev; } ;
struct rmobile_pm_domain {struct dev_power_governor* gov; struct generic_pm_domain genpd; } ;
struct dev_power_governor {int dummy; } ;


 int GENPD_FLAG_ACTIVE_WAKEUP ;
 int GENPD_FLAG_ALWAYS_ON ;
 int GENPD_FLAG_PM_CLK ;
 int __rmobile_pd_power_up (struct rmobile_pm_domain*) ;
 int cpg_mstp_attach_dev ;
 int cpg_mstp_detach_dev ;
 int pm_genpd_init (struct generic_pm_domain*,int *,int) ;
 int rmobile_pd_power_down ;
 int rmobile_pd_power_up ;
 int simple_qos_governor ;

__attribute__((used)) static void rmobile_init_pm_domain(struct rmobile_pm_domain *rmobile_pd)
{
 struct generic_pm_domain *genpd = &rmobile_pd->genpd;
 struct dev_power_governor *gov = rmobile_pd->gov;

 genpd->flags |= GENPD_FLAG_PM_CLK | GENPD_FLAG_ACTIVE_WAKEUP;
 genpd->attach_dev = cpg_mstp_attach_dev;
 genpd->detach_dev = cpg_mstp_detach_dev;

 if (!(genpd->flags & GENPD_FLAG_ALWAYS_ON)) {
  genpd->power_off = rmobile_pd_power_down;
  genpd->power_on = rmobile_pd_power_up;
  __rmobile_pd_power_up(rmobile_pd);
 }

 pm_genpd_init(genpd, gov ? : &simple_qos_governor, 0);
}
