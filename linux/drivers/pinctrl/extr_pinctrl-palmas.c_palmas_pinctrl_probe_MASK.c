#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  parent; scalar_t__ of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct palmas_pinctrl_data {int /*<<< orphan*/  num_pin_groups; int /*<<< orphan*/  pin_groups; } ;
struct palmas_pctrl_chip_info {int /*<<< orphan*/  pctl; int /*<<< orphan*/  num_pin_groups; int /*<<< orphan*/  pin_groups; void* num_functions; void* functions; void* num_pins; void* pins; int /*<<< orphan*/  palmas; TYPE_2__* dev; } ;
struct TYPE_8__ {void* npins; void* pins; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct palmas_pctrl_chip_info* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,struct palmas_pctrl_chip_info*) ; 
 struct palmas_pinctrl_data* FUNC8 (TYPE_2__*) ; 
 int FUNC9 (scalar_t__,char*) ; 
 void* palmas_pin_function ; 
 TYPE_1__ palmas_pinctrl_desc ; 
 int FUNC10 (struct palmas_pctrl_chip_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct palmas_pctrl_chip_info*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct palmas_pctrl_chip_info*,int) ; 
 void* palmas_pins_desc ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct palmas_pctrl_chip_info*) ; 
 struct palmas_pinctrl_data tps65913_pinctrl_data ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct palmas_pctrl_chip_info *pci;
	const struct palmas_pinctrl_data *pinctrl_data = &tps65913_pinctrl_data;
	int ret;
	bool enable_dvfs1 = false;
	bool enable_dvfs2 = false;

	if (pdev->dev.of_node) {
		pinctrl_data = FUNC8(&pdev->dev);
		enable_dvfs1 = FUNC9(pdev->dev.of_node,
					"ti,palmas-enable-dvfs1");
		enable_dvfs2 = FUNC9(pdev->dev.of_node,
					"ti,palmas-enable-dvfs2");
	}

	pci = FUNC6(&pdev->dev, sizeof(*pci), GFP_KERNEL);
	if (!pci)
		return -ENOMEM;

	pci->dev = &pdev->dev;
	pci->palmas = FUNC4(pdev->dev.parent);

	pci->pins = palmas_pins_desc;
	pci->num_pins = FUNC0(palmas_pins_desc);
	pci->functions = palmas_pin_function;
	pci->num_functions = FUNC0(palmas_pin_function);
	pci->pin_groups = pinctrl_data->pin_groups;
	pci->num_pin_groups = pinctrl_data->num_pin_groups;

	FUNC13(pdev, pci);

	FUNC11(pci, enable_dvfs1);
	FUNC12(pci, enable_dvfs2);
	ret = FUNC10(pci);
	if (ret < 0) {
		FUNC3(&pdev->dev,
			"Reading pinctrol option register failed: %d\n", ret);
		return ret;
	}

	palmas_pinctrl_desc.name = FUNC5(&pdev->dev);
	palmas_pinctrl_desc.pins = palmas_pins_desc;
	palmas_pinctrl_desc.npins = FUNC0(palmas_pins_desc);
	pci->pctl = FUNC7(&pdev->dev, &palmas_pinctrl_desc,
					  pci);
	if (FUNC1(pci->pctl)) {
		FUNC3(&pdev->dev, "Couldn't register pinctrl driver\n");
		return FUNC2(pci->pctl);
	}
	return 0;
}