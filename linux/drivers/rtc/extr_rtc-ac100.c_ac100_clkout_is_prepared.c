
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ac100_clkout {int offset; int regmap; } ;


 unsigned int AC100_CLKOUT_EN ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct ac100_clkout* to_ac100_clkout (struct clk_hw*) ;

__attribute__((used)) static int ac100_clkout_is_prepared(struct clk_hw *hw)
{
 struct ac100_clkout *clk = to_ac100_clkout(hw);
 unsigned int reg;

 regmap_read(clk->regmap, clk->offset, &reg);

 return reg & AC100_CLKOUT_EN;
}
