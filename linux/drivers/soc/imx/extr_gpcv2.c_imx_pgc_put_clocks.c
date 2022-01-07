
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_pgc_domain {int num_clks; int * clk; } ;


 int clk_put (int ) ;

__attribute__((used)) static void imx_pgc_put_clocks(struct imx_pgc_domain *domain)
{
 int i;

 for (i = domain->num_clks - 1; i >= 0; i--)
  clk_put(domain->clk[i]);
}
