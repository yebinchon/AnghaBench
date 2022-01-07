
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ac100_clkout {int offset; int regmap; } ;


 unsigned int AC100_CLKOUT_DIV_SHIFT ;
 int AC100_CLKOUT_DIV_WIDTH ;
 unsigned int AC100_CLKOUT_PRE_DIV_SHIFT ;
 int AC100_CLKOUT_PRE_DIV_WIDTH ;
 unsigned long AC100_RTC_32K_RATE ;
 int BIT (int) ;
 int CLK_DIVIDER_POWER_OF_TWO ;
 int * ac100_clkout_prediv ;
 unsigned long divider_recalc_rate (struct clk_hw*,unsigned long,unsigned int,int *,int ,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct ac100_clkout* to_ac100_clkout (struct clk_hw*) ;

__attribute__((used)) static unsigned long ac100_clkout_recalc_rate(struct clk_hw *hw,
           unsigned long prate)
{
 struct ac100_clkout *clk = to_ac100_clkout(hw);
 unsigned int reg, div;

 regmap_read(clk->regmap, clk->offset, &reg);


 if (prate != AC100_RTC_32K_RATE) {
  div = (reg >> AC100_CLKOUT_PRE_DIV_SHIFT) &
   ((1 << AC100_CLKOUT_PRE_DIV_WIDTH) - 1);
  prate = divider_recalc_rate(hw, prate, div,
         ac100_clkout_prediv, 0,
         AC100_CLKOUT_PRE_DIV_WIDTH);
 }

 div = (reg >> AC100_CLKOUT_DIV_SHIFT) &
  (BIT(AC100_CLKOUT_DIV_WIDTH) - 1);
 return divider_recalc_rate(hw, prate, div, ((void*)0),
       CLK_DIVIDER_POWER_OF_TWO,
       AC100_CLKOUT_DIV_WIDTH);
}
