
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_slim_rproc {int rproc; scalar_t__* clks; } ;


 int ST_SLIM_MAX_CLK ;
 int clk_put (scalar_t__) ;
 int rproc_del (int ) ;
 int rproc_free (int ) ;
 int slim_clk_disable (struct st_slim_rproc*) ;

void st_slim_rproc_put(struct st_slim_rproc *slim_rproc)
{
 int clk;

 if (!slim_rproc)
  return;

 slim_clk_disable(slim_rproc);

 for (clk = 0; clk < ST_SLIM_MAX_CLK && slim_rproc->clks[clk]; clk++)
  clk_put(slim_rproc->clks[clk]);

 rproc_del(slim_rproc->rproc);
 rproc_free(slim_rproc->rproc);
}
