
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 void* abs (int) ;
 unsigned long clk_get_rate (struct clk*) ;

__attribute__((used)) static int sunxi_pinctrl_get_debounce_div(struct clk *clk, int freq, int *diff)
{
 unsigned long clock = clk_get_rate(clk);
 unsigned int best_diff, best_div;
 int i;

 best_diff = abs(freq - clock);
 best_div = 0;

 for (i = 1; i < 8; i++) {
  int cur_diff = abs(freq - (clock >> i));

  if (cur_diff < best_diff) {
   best_diff = cur_diff;
   best_div = i;
  }
 }

 *diff = best_diff;
 return best_div;
}
