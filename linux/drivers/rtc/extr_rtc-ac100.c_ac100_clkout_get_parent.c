
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct clk_hw {int dummy; } ;
struct ac100_clkout {int offset; int regmap; } ;


 unsigned int AC100_CLKOUT_MUX_SHIFT ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct ac100_clkout* to_ac100_clkout (struct clk_hw*) ;

__attribute__((used)) static u8 ac100_clkout_get_parent(struct clk_hw *hw)
{
 struct ac100_clkout *clk = to_ac100_clkout(hw);
 unsigned int reg;

 regmap_read(clk->regmap, clk->offset, &reg);

 return (reg >> AC100_CLKOUT_MUX_SHIFT) & 0x1;
}
