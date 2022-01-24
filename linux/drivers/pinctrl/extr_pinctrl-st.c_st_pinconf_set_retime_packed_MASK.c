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
struct st_retime_packed {int /*<<< orphan*/  delay_1; int /*<<< orphan*/  delay_0; int /*<<< orphan*/  retime; int /*<<< orphan*/  invertclk; int /*<<< orphan*/  double_edge; int /*<<< orphan*/  clknotdata; int /*<<< orphan*/  clk1notclk0; } ;
struct TYPE_2__ {struct st_retime_packed rt_p; } ;
struct st_pio_control {TYPE_1__ rt; } ;
struct st_pinctrl {struct st_pctl_data* data; } ;
struct st_pctl_data {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 unsigned int FUNC1 (unsigned long) ; 
 unsigned int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned int FUNC4 (unsigned long) ; 
 unsigned int FUNC5 (unsigned long) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,struct st_pctl_data const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static void FUNC8(struct st_pinctrl *info,
	struct st_pio_control *pc,	unsigned long config, int pin)
{
	const struct st_pctl_data *data = info->data;
	struct st_retime_packed *rt_p = &pc->rt.rt_p;
	unsigned int delay;

	FUNC7(rt_p->clk1notclk0,
				FUNC1(config), pin);

	FUNC7(rt_p->clknotdata,
				FUNC2(config), pin);

	FUNC7(rt_p->double_edge,
				FUNC4(config), pin);

	FUNC7(rt_p->invertclk,
				FUNC5(config), pin);

	FUNC7(rt_p->retime,
				FUNC0(config), pin);

	delay = FUNC6(FUNC3(config),
					data, config);
	/* 2 bit delay, lsb */
	FUNC7(rt_p->delay_0, delay & 0x1, pin);
	/* 2 bit delay, msb */
	FUNC7(rt_p->delay_1, delay & 0x2, pin);

}