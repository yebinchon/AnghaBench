
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;


 int __rmobile_pd_power_up (int ) ;
 int to_rmobile_pd (struct generic_pm_domain*) ;

__attribute__((used)) static int rmobile_pd_power_up(struct generic_pm_domain *genpd)
{
 return __rmobile_pd_power_up(to_rmobile_pd(genpd));
}
