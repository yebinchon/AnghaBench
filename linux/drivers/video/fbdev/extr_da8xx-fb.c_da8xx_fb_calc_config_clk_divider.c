
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int pixclock; } ;
struct da8xx_fb_par {int dummy; } ;


 unsigned int da8xx_fb_calc_clk_divider (struct da8xx_fb_par*,int ,unsigned int*) ;
 int da8xx_fb_config_clk_divider (struct da8xx_fb_par*,unsigned int,unsigned int) ;

__attribute__((used)) static int da8xx_fb_calc_config_clk_divider(struct da8xx_fb_par *par,
         struct fb_videomode *mode)
{
 unsigned lcdc_clk_rate;
 unsigned lcdc_clk_div = da8xx_fb_calc_clk_divider(par, mode->pixclock,
         &lcdc_clk_rate);

 return da8xx_fb_config_clk_divider(par, lcdc_clk_div, lcdc_clk_rate);
}
