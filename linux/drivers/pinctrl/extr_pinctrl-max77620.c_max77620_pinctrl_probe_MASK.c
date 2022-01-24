#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_7__* parent; int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct max77620_pctrl_info {int /*<<< orphan*/  pctl; TYPE_1__* fps_config; void* num_pin_groups; void* pin_groups; void* num_functions; void* functions; void* num_pins; void* pins; int /*<<< orphan*/  rmap; TYPE_3__* dev; } ;
struct max77620_chip {int /*<<< orphan*/  rmap; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_10__ {void* custom_params; void* num_custom_params; void* npins; void* pins; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int active_fps_src; int active_power_up_slots; int active_power_down_slots; int suspend_fps_src; int suspend_power_up_slots; int suspend_power_down_slots; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX77620_PIN_NUM ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 struct max77620_chip* FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 struct max77620_pctrl_info* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*,struct max77620_pctrl_info*) ; 
 void* max77620_cfg_params ; 
 void* max77620_pin_function ; 
 TYPE_2__ max77620_pinctrl_desc ; 
 void* max77620_pingroups ; 
 void* max77620_pins_desc ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct max77620_pctrl_info*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct max77620_chip *max77620 = FUNC4(pdev->dev.parent);
	struct max77620_pctrl_info *mpci;
	int i;

	mpci = FUNC6(&pdev->dev, sizeof(*mpci), GFP_KERNEL);
	if (!mpci)
		return -ENOMEM;

	mpci->dev = &pdev->dev;
	mpci->dev->of_node = pdev->dev.parent->of_node;
	mpci->rmap = max77620->rmap;

	mpci->pins = max77620_pins_desc;
	mpci->num_pins = FUNC0(max77620_pins_desc);
	mpci->functions = max77620_pin_function;
	mpci->num_functions = FUNC0(max77620_pin_function);
	mpci->pin_groups = max77620_pingroups;
	mpci->num_pin_groups = FUNC0(max77620_pingroups);
	FUNC8(pdev, mpci);

	max77620_pinctrl_desc.name = FUNC5(&pdev->dev);
	max77620_pinctrl_desc.pins = max77620_pins_desc;
	max77620_pinctrl_desc.npins = FUNC0(max77620_pins_desc);
	max77620_pinctrl_desc.num_custom_params =
				FUNC0(max77620_cfg_params);
	max77620_pinctrl_desc.custom_params = max77620_cfg_params;

	for (i = 0; i < MAX77620_PIN_NUM; ++i) {
		mpci->fps_config[i].active_fps_src = -1;
		mpci->fps_config[i].active_power_up_slots = -1;
		mpci->fps_config[i].active_power_down_slots = -1;
		mpci->fps_config[i].suspend_fps_src = -1;
		mpci->fps_config[i].suspend_power_up_slots = -1;
		mpci->fps_config[i].suspend_power_down_slots = -1;
	}

	mpci->pctl = FUNC7(&pdev->dev, &max77620_pinctrl_desc,
					   mpci);
	if (FUNC1(mpci->pctl)) {
		FUNC3(&pdev->dev, "Couldn't register pinctrl driver\n");
		return FUNC2(mpci->pctl);
	}

	return 0;
}