
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;


 int imx_gpc_pu_pgc_sw_pxx_req (struct generic_pm_domain*,int) ;

__attribute__((used)) static int imx_gpc_pu_pgc_sw_pup_req(struct generic_pm_domain *genpd)
{
 return imx_gpc_pu_pgc_sw_pxx_req(genpd, 1);
}
