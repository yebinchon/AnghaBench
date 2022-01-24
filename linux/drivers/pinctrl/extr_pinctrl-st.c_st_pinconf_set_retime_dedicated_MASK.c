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
 int RT_D_CFG_CLKNOTDATA_SHIFT ; 
 int RT_D_CFG_CLK_SHIFT ; 
 int RT_D_CFG_DELAY_INNOTOUT_SHIFT ; 
 unsigned long RT_D_CFG_DELAY_SHIFT ; 
 int RT_D_CFG_DOUBLE_EDGE_SHIFT ; 
 int RT_D_CFG_INVERTCLK_SHIFT ; 
 int RT_D_CFG_RETIME_SHIFT ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 int FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct st_pinctrl *info,
	struct st_pio_control *pc, unsigned long config, int pin)
{
	int input	= FUNC0(config) ? 0 : 1;
	int clk		= FUNC2(config);
	int clknotdata	= FUNC3(config);
	int double_edge	= FUNC5(config);
	int invertclk	= FUNC6(config);
	int retime	= FUNC1(config);

	unsigned long delay = FUNC8(
			FUNC4(config),
			info->data, config);
	struct st_retime_dedicated *rt_d = &pc->rt.rt_d;

	unsigned long retime_config =
		((clk) << RT_D_CFG_CLK_SHIFT) |
		((delay) << RT_D_CFG_DELAY_SHIFT) |
		((input) << RT_D_CFG_DELAY_INNOTOUT_SHIFT) |
		((retime) << RT_D_CFG_RETIME_SHIFT) |
		((clknotdata) << RT_D_CFG_CLKNOTDATA_SHIFT) |
		((invertclk) << RT_D_CFG_INVERTCLK_SHIFT) |
		((double_edge) << RT_D_CFG_DOUBLE_EDGE_SHIFT);

	FUNC7(rt_d->rt[pin], retime_config);
}