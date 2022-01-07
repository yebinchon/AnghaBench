
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx_pgc_domain {int num_clks; struct clk** clk; TYPE_1__* dev; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int of_node; } ;


 int EINVAL ;
 int GPC_CLK_MAX ;
 scalar_t__ IS_ERR (struct clk*) ;
 int clk_put (struct clk*) ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct clk* of_clk_get (int ,int) ;

__attribute__((used)) static int imx_pgc_get_clocks(struct imx_pgc_domain *domain)
{
 int i, ret;

 for (i = 0; ; i++) {
  struct clk *clk = of_clk_get(domain->dev->of_node, i);
  if (IS_ERR(clk))
   break;
  if (i >= GPC_CLK_MAX) {
   dev_err(domain->dev, "more than %d clocks\n",
    GPC_CLK_MAX);
   ret = -EINVAL;
   goto clk_err;
  }
  domain->clk[i] = clk;
 }
 domain->num_clks = i;

 return 0;

clk_err:
 while (i--)
  clk_put(domain->clk[i]);

 return ret;
}
