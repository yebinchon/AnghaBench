
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int _dev_pm_opp_cpumask_remove_table (struct cpumask const*,int) ;

void dev_pm_opp_cpumask_remove_table(const struct cpumask *cpumask)
{
 _dev_pm_opp_cpumask_remove_table(cpumask, -1);
}
