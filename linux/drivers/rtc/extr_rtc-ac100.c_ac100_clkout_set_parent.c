
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct clk_hw {int dummy; } ;
struct ac100_clkout {int offset; int regmap; } ;


 int AC100_CLKOUT_MUX_SHIFT ;
 int BIT (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct ac100_clkout* to_ac100_clkout (struct clk_hw*) ;

__attribute__((used)) static int ac100_clkout_set_parent(struct clk_hw *hw, u8 index)
{
 struct ac100_clkout *clk = to_ac100_clkout(hw);

 return regmap_update_bits(clk->regmap, clk->offset,
      BIT(AC100_CLKOUT_MUX_SHIFT),
      index ? BIT(AC100_CLKOUT_MUX_SHIFT) : 0);
}
