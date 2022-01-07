
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;


 int exynos_pd_power (struct generic_pm_domain*,int) ;

__attribute__((used)) static int exynos_pd_power_on(struct generic_pm_domain *domain)
{
 return exynos_pd_power(domain, 1);
}
