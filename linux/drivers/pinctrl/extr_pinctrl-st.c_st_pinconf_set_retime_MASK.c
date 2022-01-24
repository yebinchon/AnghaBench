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
struct st_pio_control {int rt_pin_mask; } ;
struct st_pinctrl {TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ rt_style; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct st_pinctrl*,struct st_pio_control*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct st_pinctrl*,struct st_pio_control*,unsigned long,int) ; 
 scalar_t__ st_retime_style_dedicated ; 
 scalar_t__ st_retime_style_packed ; 

__attribute__((used)) static void FUNC3(struct st_pinctrl *info,
	struct st_pio_control *pc, int pin, unsigned long config)
{
	if (info->data->rt_style == st_retime_style_packed)
		FUNC2(info, pc, config, pin);
	else if (info->data->rt_style == st_retime_style_dedicated)
		if ((FUNC0(pin) & pc->rt_pin_mask))
			FUNC1(info, pc,
							config, pin);
}