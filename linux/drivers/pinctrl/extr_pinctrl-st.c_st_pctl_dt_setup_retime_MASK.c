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
struct st_pio_control {int dummy; } ;
struct st_pinctrl {struct st_pctl_data* data; } ;
struct st_pctl_data {scalar_t__ rt_style; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct st_pinctrl*,int,struct st_pio_control*) ; 
 int FUNC1 (struct st_pinctrl*,int,struct st_pio_control*) ; 
 scalar_t__ st_retime_style_dedicated ; 
 scalar_t__ st_retime_style_packed ; 

__attribute__((used)) static int FUNC2(struct st_pinctrl *info,
	int bank, struct st_pio_control *pc)
{
	const struct st_pctl_data *data = info->data;
	if (data->rt_style  == st_retime_style_packed)
		return FUNC1(info, bank, pc);
	else if (data->rt_style == st_retime_style_dedicated)
		return FUNC0(info, bank, pc);

	return -EINVAL;
}