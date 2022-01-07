
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;
struct dev_pm_opp {int dummy; } ;


 unsigned int dev_pm_opp_get_level (struct dev_pm_opp*) ;

__attribute__((used)) static unsigned int rpmpd_get_performance(struct generic_pm_domain *genpd,
       struct dev_pm_opp *opp)
{
 return dev_pm_opp_get_level(opp);
}
