
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct ac100_clkout {int offset; int regmap; } ;


 int AC100_CLKOUT_EN ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct ac100_clkout* to_ac100_clkout (struct clk_hw*) ;

__attribute__((used)) static void ac100_clkout_unprepare(struct clk_hw *hw)
{
 struct ac100_clkout *clk = to_ac100_clkout(hw);

 regmap_update_bits(clk->regmap, clk->offset, AC100_CLKOUT_EN, 0);
}
