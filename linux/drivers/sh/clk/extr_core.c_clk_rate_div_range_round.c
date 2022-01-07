
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_round_data {unsigned int min; unsigned int max; unsigned long rate; int arg; int func; } ;
struct clk {int dummy; } ;


 int clk_get_parent (struct clk*) ;
 int clk_rate_div_range_iter ;
 long clk_rate_round_helper (struct clk_rate_round_data*) ;

long clk_rate_div_range_round(struct clk *clk, unsigned int div_min,
         unsigned int div_max, unsigned long rate)
{
 struct clk_rate_round_data div_range_round = {
  .min = div_min,
  .max = div_max,
  .func = clk_rate_div_range_iter,
  .arg = clk_get_parent(clk),
  .rate = rate,
 };

 return clk_rate_round_helper(&div_range_round);
}
