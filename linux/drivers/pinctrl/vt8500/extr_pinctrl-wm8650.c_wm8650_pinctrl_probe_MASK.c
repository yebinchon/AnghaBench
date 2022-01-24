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
struct wmt_pinctrl_data {void* ngroups; void* groups; void* npins; void* pins; void* nbanks; void* banks; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct wmt_pinctrl_data* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* wm8650_banks ; 
 void* wm8650_groups ; 
 void* wm8650_pins ; 
 int FUNC2 (struct platform_device*,struct wmt_pinctrl_data*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct wmt_pinctrl_data *data;

	data = FUNC1(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->banks = wm8650_banks;
	data->nbanks = FUNC0(wm8650_banks);
	data->pins = wm8650_pins;
	data->npins = FUNC0(wm8650_pins);
	data->groups = wm8650_groups;
	data->ngroups = FUNC0(wm8650_groups);

	return FUNC2(pdev, data);
}