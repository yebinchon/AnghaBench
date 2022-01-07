
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_slim_rproc {scalar_t__* clks; } ;


 int ST_SLIM_MAX_CLK ;
 int clk_disable_unprepare (scalar_t__) ;

__attribute__((used)) static void slim_clk_disable(struct st_slim_rproc *slim_rproc)
{
 int clk;

 for (clk = 0; clk < ST_SLIM_MAX_CLK && slim_rproc->clks[clk]; clk++)
  clk_disable_unprepare(slim_rproc->clks[clk]);
}
