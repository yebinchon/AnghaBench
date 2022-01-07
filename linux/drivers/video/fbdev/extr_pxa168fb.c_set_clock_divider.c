
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long u64 ;
typedef int u32 ;
struct pxa168fb_info {scalar_t__ reg_base; int dev; int clk; } ;
struct fb_videomode {int pixclock; int refresh; } ;


 scalar_t__ LCD_CFG_SCLK_DIV ;
 int clk_get_rate (int ) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int do_div (long long,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void set_clock_divider(struct pxa168fb_info *fbi,
         const struct fb_videomode *m)
{
 int divider_int;
 int needed_pixclk;
 u64 div_result;
 u32 x = 0;
 if (!m || !m->pixclock || !m->refresh) {
  dev_err(fbi->dev, "Input refresh or pixclock is wrong.\n");
  return;
 }




 x = 0x80000000;




 div_result = 1000000000000ll;
 do_div(div_result, m->pixclock);
 needed_pixclk = (u32)div_result;

 divider_int = clk_get_rate(fbi->clk) / needed_pixclk;


 if (divider_int < 2) {
  dev_warn(fbi->dev, "Warning: clock source is too slow. "
    "Try smaller resolution\n");
  divider_int = 2;
 }




 x |= divider_int;
 writel(x, fbi->reg_base + LCD_CFG_SCLK_DIV);
}
