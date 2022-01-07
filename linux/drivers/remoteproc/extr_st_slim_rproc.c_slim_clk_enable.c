
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_slim_rproc {scalar_t__* clks; } ;


 int ST_SLIM_MAX_CLK ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;

__attribute__((used)) static int slim_clk_enable(struct st_slim_rproc *slim_rproc)
{
 int clk, ret;

 for (clk = 0; clk < ST_SLIM_MAX_CLK && slim_rproc->clks[clk]; clk++) {
  ret = clk_prepare_enable(slim_rproc->clks[clk]);
  if (ret)
   goto err_disable_clks;
 }

 return 0;

err_disable_clks:
 while (--clk >= 0)
  clk_disable_unprepare(slim_rproc->clks[clk]);

 return ret;
}
