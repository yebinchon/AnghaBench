
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_slim_rproc {int ** clks; } ;
struct device {int of_node; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int ST_SLIM_MAX_CLK ;
 int clk_put (int *) ;
 int * of_clk_get (int ,int) ;

__attribute__((used)) static int slim_clk_get(struct st_slim_rproc *slim_rproc, struct device *dev)
{
 int clk, err;

 for (clk = 0; clk < ST_SLIM_MAX_CLK; clk++) {
  slim_rproc->clks[clk] = of_clk_get(dev->of_node, clk);
  if (IS_ERR(slim_rproc->clks[clk])) {
   err = PTR_ERR(slim_rproc->clks[clk]);
   if (err == -EPROBE_DEFER)
    goto err_put_clks;
   slim_rproc->clks[clk] = ((void*)0);
   break;
  }
 }

 return 0;

err_put_clks:
 while (--clk >= 0)
  clk_put(slim_rproc->clks[clk]);

 return err;
}
