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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct intel_soc_pmic {int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* phys; TYPE_1__ id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  chtdc_ti_pwrbtn_interrupt ; 
 struct intel_soc_pmic* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 
 struct input_dev* FUNC4 (struct device*) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct input_dev*) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct intel_soc_pmic *pmic = FUNC0(dev->parent);
	struct input_dev *input;
	int irq, err;

	irq = FUNC8(pdev, 0);
	if (irq < 0)
		return irq;
	input = FUNC4(dev);
	if (!input)
		return -ENOMEM;
	input->name = pdev->name;
	input->phys = "power-button/input0";
	input->id.bustype = BUS_HOST;
	FUNC7(input, EV_KEY, KEY_POWER);
	err = FUNC6(input);
	if (err)
		return err;

	FUNC2(dev, pmic->regmap);

	err = FUNC5(dev, irq, NULL,
					chtdc_ti_pwrbtn_interrupt,
					0, KBUILD_MODNAME, input);
	if (err)
		return err;

	FUNC3(dev, true);
	FUNC1(dev, irq);
	return 0;
}