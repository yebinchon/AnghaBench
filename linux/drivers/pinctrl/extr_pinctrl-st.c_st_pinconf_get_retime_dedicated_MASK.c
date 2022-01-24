#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct st_retime_dedicated {int /*<<< orphan*/ * rt; } ;
struct TYPE_2__ {struct st_retime_dedicated rt_d; } ;
struct st_pio_control {TYPE_1__ rt; } ;
struct st_pinctrl {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 unsigned int RT_D_CFG_CLKNOTDATA_MASK ; 
 unsigned int RT_D_CFG_CLK_MASK ; 
 unsigned int RT_D_CFG_CLK_SHIFT ; 
 unsigned int RT_D_CFG_DELAY_MASK ; 
 unsigned int RT_D_CFG_DELAY_SHIFT ; 
 unsigned int RT_D_CFG_DOUBLE_EDGE_MASK ; 
 unsigned int RT_D_CFG_INVERTCLK_MASK ; 
 unsigned int RT_D_CFG_RETIME_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned long FUNC8 (unsigned long,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct st_pinctrl *info,
	struct st_pio_control *pc,	int pin, unsigned long *config)
{
	unsigned int value;
	unsigned long delay_bits, delay, rt_clk;
	int output = FUNC6(*config);
	struct st_retime_dedicated *rt_d = &pc->rt.rt_d;

	FUNC7(rt_d->rt[pin], &value);

	rt_clk = (value & RT_D_CFG_CLK_MASK) >> RT_D_CFG_CLK_SHIFT;
	FUNC1(*config, rt_clk);

	delay_bits = (value & RT_D_CFG_DELAY_MASK) >> RT_D_CFG_DELAY_SHIFT;
	delay =  FUNC8(delay_bits, info->data, output);
	FUNC3(*config, delay);

	if (value & RT_D_CFG_CLKNOTDATA_MASK)
		FUNC2(*config);

	if (value & RT_D_CFG_DOUBLE_EDGE_MASK)
		FUNC4(*config);

	if (value & RT_D_CFG_INVERTCLK_MASK)
		FUNC5(*config);

	if (value & RT_D_CFG_RETIME_MASK)
		FUNC0(*config);

	return 0;
}