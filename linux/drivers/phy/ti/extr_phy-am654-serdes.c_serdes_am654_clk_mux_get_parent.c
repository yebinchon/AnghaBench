
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct serdes_am654_clk_mux {unsigned int reg; size_t clk_id; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct clk_hw {int dummy; } ;


 unsigned int AM654_SERDES_CTRL_CLKSEL_MASK ;
 unsigned int AM654_SERDES_CTRL_CLKSEL_SHIFT ;
 int regmap_read (struct regmap*,unsigned int,unsigned int*) ;
 int ** serdes_am654_mux_table ;
 struct serdes_am654_clk_mux* to_serdes_am654_clk_mux (struct clk_hw*) ;

__attribute__((used)) static u8 serdes_am654_clk_mux_get_parent(struct clk_hw *hw)
{
 struct serdes_am654_clk_mux *mux = to_serdes_am654_clk_mux(hw);
 struct regmap *regmap = mux->regmap;
 unsigned int reg = mux->reg;
 unsigned int val;

 regmap_read(regmap, reg, &val);
 val &= AM654_SERDES_CTRL_CLKSEL_MASK;
 val >>= AM654_SERDES_CTRL_CLKSEL_SHIFT;

 return serdes_am654_mux_table[val][mux->clk_id];
}
