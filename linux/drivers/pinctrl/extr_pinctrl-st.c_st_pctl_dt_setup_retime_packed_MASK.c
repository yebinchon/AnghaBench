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
struct st_retime_packed {void* double_edge; void* clknotdata; void* retime; void* invertclk; void* delay_1; void* delay_0; void* clk1notclk0; } ;
struct TYPE_2__ {struct st_retime_packed rt_p; } ;
struct st_pio_control {TYPE_1__ rt; } ;
struct st_pinctrl {struct st_pctl_data* data; struct regmap* regmap; struct device* dev; } ;
struct st_pctl_data {int rt; } ;
struct regmap {int dummy; } ;
struct reg_field {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 struct reg_field FUNC1 (int) ; 
 struct reg_field FUNC2 (int) ; 
 struct reg_field FUNC3 (int) ; 
 struct reg_field FUNC4 (int) ; 
 struct reg_field FUNC5 (int) ; 
 struct reg_field FUNC6 (int) ; 
 struct reg_field FUNC7 (int) ; 
 int RT_P_CFGS_PER_BANK ; 
 void* FUNC8 (struct device*,struct regmap*,struct reg_field) ; 

__attribute__((used)) static int FUNC9(struct st_pinctrl *info,
	int bank, struct st_pio_control *pc)
{
	struct device *dev = info->dev;
	struct regmap *rm = info->regmap;
	const struct st_pctl_data *data = info->data;
	/* 2 registers per bank */
	int reg = (data->rt + bank * RT_P_CFGS_PER_BANK) * 4;
	struct st_retime_packed *rt_p = &pc->rt.rt_p;
	/* cfg0 */
	struct reg_field clk1notclk0 = FUNC1(reg);
	struct reg_field delay_0 = FUNC2(reg);
	struct reg_field delay_1 = FUNC3(reg);
	/* cfg1 */
	struct reg_field invertclk = FUNC6(reg + 4);
	struct reg_field retime = FUNC7(reg + 4);
	struct reg_field clknotdata = FUNC4(reg + 4);
	struct reg_field double_edge = FUNC5(reg + 4);

	rt_p->clk1notclk0 = FUNC8(dev, rm, clk1notclk0);
	rt_p->delay_0	= FUNC8(dev, rm, delay_0);
	rt_p->delay_1 = FUNC8(dev, rm, delay_1);
	rt_p->invertclk = FUNC8(dev, rm, invertclk);
	rt_p->retime = FUNC8(dev, rm, retime);
	rt_p->clknotdata = FUNC8(dev, rm, clknotdata);
	rt_p->double_edge = FUNC8(dev, rm, double_edge);

	if (FUNC0(rt_p->clk1notclk0) || FUNC0(rt_p->delay_0) ||
		 FUNC0(rt_p->delay_1) || FUNC0(rt_p->invertclk) ||
		 FUNC0(rt_p->retime) || FUNC0(rt_p->clknotdata) ||
		 FUNC0(rt_p->double_edge))
		return -EINVAL;

	return 0;
}