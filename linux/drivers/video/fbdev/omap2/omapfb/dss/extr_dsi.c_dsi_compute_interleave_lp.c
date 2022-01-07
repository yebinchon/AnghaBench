
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int max (int,int) ;

__attribute__((used)) static int dsi_compute_interleave_lp(int blank, int enter_hs, int exit_hs,
  int lp_clk_div, int tdsi_fclk)
{
 int trans_lp;
 int tlp_avail;
 int ttxclkesc;
 int thsbyte_clk = 16;
 int lp_inter;


 trans_lp = exit_hs + max(enter_hs, 2) + 1;


 tlp_avail = thsbyte_clk * (blank - trans_lp);

 ttxclkesc = tdsi_fclk * lp_clk_div;

 lp_inter = ((tlp_avail - 8 * thsbyte_clk - 5 * tdsi_fclk) / ttxclkesc -
   26) / 16;

 return max(lp_inter, 0);
}
