
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geni_se {unsigned long* clk_perf_tbl; int num_clk_levels; int clk; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_CLK_PERF_LEVEL ;
 long clk_round_rate (int ,long) ;
 unsigned long* devm_kcalloc (int ,int,int,int ) ;

int geni_se_clk_tbl_get(struct geni_se *se, unsigned long **tbl)
{
 long freq = 0;
 int i;

 if (se->clk_perf_tbl) {
  *tbl = se->clk_perf_tbl;
  return se->num_clk_levels;
 }

 se->clk_perf_tbl = devm_kcalloc(se->dev, MAX_CLK_PERF_LEVEL,
     sizeof(*se->clk_perf_tbl),
     GFP_KERNEL);
 if (!se->clk_perf_tbl)
  return -ENOMEM;

 for (i = 0; i < MAX_CLK_PERF_LEVEL; i++) {
  freq = clk_round_rate(se->clk, freq + 1);
  if (freq <= 0 || freq == se->clk_perf_tbl[i - 1])
   break;
  se->clk_perf_tbl[i] = freq;
 }
 se->num_clk_levels = i;
 *tbl = se->clk_perf_tbl;
 return se->num_clk_levels;
}
