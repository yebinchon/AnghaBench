#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct serdes_am654_clk_mux {unsigned int reg; size_t clk_id; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int AM654_SERDES_CTRL_CLKSEL_MASK ; 
 unsigned int AM654_SERDES_CTRL_CLKSEL_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/ ** serdes_am654_mux_table ; 
 struct serdes_am654_clk_mux* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC2(struct clk_hw *hw)
{
	struct serdes_am654_clk_mux *mux = FUNC1(hw);
	struct regmap *regmap = mux->regmap;
	unsigned int reg = mux->reg;
	unsigned int val;

	FUNC0(regmap, reg, &val);
	val &= AM654_SERDES_CTRL_CLKSEL_MASK;
	val >>= AM654_SERDES_CTRL_CLKSEL_SHIFT;

	return serdes_am654_mux_table[val][mux->clk_id];
}