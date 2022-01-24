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
typedef  unsigned int u8 ;
struct clk_hw {int dummy; } ;
struct ac100_clkout {int /*<<< orphan*/  offset; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int AC100_CLKOUT_MUX_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct ac100_clkout* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC2(struct clk_hw *hw)
{
	struct ac100_clkout *clk = FUNC1(hw);
	unsigned int reg;

	FUNC0(clk->regmap, clk->offset, &reg);

	return (reg >> AC100_CLKOUT_MUX_SHIFT) & 0x1;
}