
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 unsigned long ac100_clkout_round_rate (struct clk_hw*,unsigned long,unsigned long) ;
 int clk_hw_get_num_parents (struct clk_hw*) ;
 struct clk_hw* clk_hw_get_parent_by_index (struct clk_hw*,int) ;
 unsigned long clk_hw_get_rate (struct clk_hw*) ;

__attribute__((used)) static int ac100_clkout_determine_rate(struct clk_hw *hw,
           struct clk_rate_request *req)
{
 struct clk_hw *best_parent;
 unsigned long best = 0;
 int i, num_parents = clk_hw_get_num_parents(hw);

 for (i = 0; i < num_parents; i++) {
  struct clk_hw *parent = clk_hw_get_parent_by_index(hw, i);
  unsigned long tmp, prate;
  if (!parent)
   continue;

  prate = clk_hw_get_rate(parent);

  tmp = ac100_clkout_round_rate(hw, req->rate, prate);

  if (tmp > req->rate)
   continue;
  if (req->rate - tmp < req->rate - best) {
   best = tmp;
   best_parent = parent;
  }
 }

 if (!best)
  return -EINVAL;

 req->best_parent_hw = best_parent;
 req->best_parent_rate = best;
 req->rate = best;

 return 0;
}
