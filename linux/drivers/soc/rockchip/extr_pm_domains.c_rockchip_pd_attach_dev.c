
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {struct clk* name; } ;
struct device {int of_node; } ;
struct clk {int dummy; } ;


 int IS_ERR (struct clk*) ;
 int clk_put (struct clk*) ;
 int dev_dbg (struct device*,char*,struct clk*) ;
 int dev_err (struct device*,char*,int) ;
 struct clk* of_clk_get (int ,int ) ;
 int pm_clk_add_clk (struct device*,struct clk*) ;
 int pm_clk_create (struct device*) ;
 int pm_clk_destroy (struct device*) ;

__attribute__((used)) static int rockchip_pd_attach_dev(struct generic_pm_domain *genpd,
      struct device *dev)
{
 struct clk *clk;
 int i;
 int error;

 dev_dbg(dev, "attaching to power domain '%s'\n", genpd->name);

 error = pm_clk_create(dev);
 if (error) {
  dev_err(dev, "pm_clk_create failed %d\n", error);
  return error;
 }

 i = 0;
 while ((clk = of_clk_get(dev->of_node, i++)) && !IS_ERR(clk)) {
  dev_dbg(dev, "adding clock '%pC' to list of PM clocks\n", clk);
  error = pm_clk_add_clk(dev, clk);
  if (error) {
   dev_err(dev, "pm_clk_add_clk failed %d\n", error);
   clk_put(clk);
   pm_clk_destroy(dev);
   return error;
  }
 }

 return 0;
}
