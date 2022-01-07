
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_pipe3 {int dev; int sys_clk; struct pipe3_dpll_map* dpll_map; } ;
struct pipe3_dpll_params {int dummy; } ;
struct pipe3_dpll_map {long rate; struct pipe3_dpll_params params; } ;


 unsigned long clk_get_rate (int ) ;
 int dev_err (int ,char*,unsigned long) ;

__attribute__((used)) static struct pipe3_dpll_params *ti_pipe3_get_dpll_params(struct ti_pipe3 *phy)
{
 unsigned long rate;
 struct pipe3_dpll_map *dpll_map = phy->dpll_map;

 rate = clk_get_rate(phy->sys_clk);

 for (; dpll_map->rate; dpll_map++) {
  if (rate == dpll_map->rate)
   return &dpll_map->params;
 }

 dev_err(phy->dev, "No DPLL configuration for %lu Hz SYS CLK\n", rate);

 return ((void*)0);
}
