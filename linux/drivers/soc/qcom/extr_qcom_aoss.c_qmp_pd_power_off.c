
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;


 int qmp_pd_power_toggle (int ,int) ;
 int to_qmp_pd_resource (struct generic_pm_domain*) ;

__attribute__((used)) static int qmp_pd_power_off(struct generic_pm_domain *domain)
{
 return qmp_pd_power_toggle(to_qmp_pd_resource(domain), 0);
}
