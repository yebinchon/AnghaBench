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
struct st_retime_packed {int /*<<< orphan*/  delay_1; int /*<<< orphan*/  delay_0; int /*<<< orphan*/  invertclk; int /*<<< orphan*/  double_edge; int /*<<< orphan*/  clknotdata; int /*<<< orphan*/  clk1notclk0; int /*<<< orphan*/  retime; } ;
struct TYPE_2__ {struct st_retime_packed rt_p; } ;
struct st_pio_control {TYPE_1__ rt; } ;
struct st_pinctrl {struct st_pctl_data* data; } ;
struct st_pctl_data {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned int FUNC9 (unsigned int,struct st_pctl_data const*,int) ; 

__attribute__((used)) static int FUNC10(struct st_pinctrl *info,
	struct st_pio_control *pc,	int pin, unsigned long *config)
{
	const struct st_pctl_data *data = info->data;
	struct st_retime_packed *rt_p = &pc->rt.rt_p;
	unsigned int delay_bits, delay, delay0, delay1, val;
	int output = FUNC7(*config);

	if (!FUNC8(rt_p->retime, &val) && (val & FUNC0(pin)))
		FUNC1(*config);

	if (!FUNC8(rt_p->clk1notclk0, &val) && (val & FUNC0(pin)))
		FUNC2(*config, 1);

	if (!FUNC8(rt_p->clknotdata, &val) && (val & FUNC0(pin)))
		FUNC3(*config);

	if (!FUNC8(rt_p->double_edge, &val) && (val & FUNC0(pin)))
		FUNC5(*config);

	if (!FUNC8(rt_p->invertclk, &val) && (val & FUNC0(pin)))
		FUNC6(*config);

	FUNC8(rt_p->delay_0, &delay0);
	FUNC8(rt_p->delay_1, &delay1);
	delay_bits = (((delay1 & FUNC0(pin)) ? 1 : 0) << 1) |
			(((delay0 & FUNC0(pin)) ? 1 : 0));
	delay =  FUNC9(delay_bits, data, output);
	FUNC4(*config, delay);

	return 0;
}