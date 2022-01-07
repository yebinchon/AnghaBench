
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_fb_par {int dummy; } ;


 int KHZ2PICOS (unsigned int) ;
 unsigned int da8xx_fb_calc_clk_divider (struct da8xx_fb_par*,unsigned int,unsigned int*) ;

__attribute__((used)) static unsigned da8xx_fb_round_clk(struct da8xx_fb_par *par,
       unsigned pixclock)
{
 unsigned lcdc_clk_div, lcdc_clk_rate;

 lcdc_clk_div = da8xx_fb_calc_clk_divider(par, pixclock, &lcdc_clk_rate);
 return KHZ2PICOS(lcdc_clk_rate / (1000 * lcdc_clk_div));
}
