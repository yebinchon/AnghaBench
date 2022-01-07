
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pm_domain {int dummy; } ;
struct generic_pm_domain {int dummy; } ;


 int rockchip_pd_power (struct rockchip_pm_domain*,int) ;
 struct rockchip_pm_domain* to_rockchip_pd (struct generic_pm_domain*) ;

__attribute__((used)) static int rockchip_pd_power_off(struct generic_pm_domain *domain)
{
 struct rockchip_pm_domain *pd = to_rockchip_pd(domain);

 return rockchip_pd_power(pd, 0);
}
