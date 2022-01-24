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
struct resource {int /*<<< orphan*/  start; } ;
struct power_supply_config {struct goldfish_battery_data* drv_data; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct goldfish_battery_data {scalar_t__ irq; void* battery; void* ac; int /*<<< orphan*/ * reg_base; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATTERY_INT_ENABLE ; 
 int /*<<< orphan*/  BATTERY_INT_MASK ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct goldfish_battery_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  ac_desc ; 
 int /*<<< orphan*/  battery_desc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct goldfish_battery_data* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct goldfish_battery_data*) ; 
 int /*<<< orphan*/  goldfish_battery_interrupt ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct goldfish_battery_data*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (struct resource*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	int ret;
	struct resource *r;
	struct goldfish_battery_data *data;
	struct power_supply_config psy_cfg = {};

	data = FUNC5(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;

	FUNC13(&data->lock);

	r = FUNC8(pdev, IORESOURCE_MEM, 0);
	if (r == NULL) {
		FUNC3(&pdev->dev, "platform_get_resource failed\n");
		return -ENODEV;
	}

	data->reg_base = FUNC4(&pdev->dev, r->start, FUNC12(r));
	if (data->reg_base == NULL) {
		FUNC3(&pdev->dev, "unable to remap MMIO\n");
		return -ENOMEM;
	}

	data->irq = FUNC7(pdev, 0);
	if (data->irq < 0) {
		FUNC3(&pdev->dev, "platform_get_irq failed\n");
		return -ENODEV;
	}

	ret = FUNC6(&pdev->dev, data->irq,
			       goldfish_battery_interrupt,
			       IRQF_SHARED, pdev->name, data);
	if (ret)
		return ret;

	psy_cfg.drv_data = data;

	data->ac = FUNC10(&pdev->dev, &ac_desc, &psy_cfg);
	if (FUNC1(data->ac))
		return FUNC2(data->ac);

	data->battery = FUNC10(&pdev->dev, &battery_desc,
						&psy_cfg);
	if (FUNC1(data->battery)) {
		FUNC11(data->ac);
		return FUNC2(data->battery);
	}

	FUNC9(pdev, data);

	FUNC0(data, BATTERY_INT_ENABLE, BATTERY_INT_MASK);
	return 0;
}