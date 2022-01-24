#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct power_supply_config {struct act8945a_charger* drv_data; int /*<<< orphan*/  of_node; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  type; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; int /*<<< orphan*/  get_property; } ;
struct act8945a_charger {int init_done; int /*<<< orphan*/  work; int /*<<< orphan*/  psy; TYPE_3__ desc; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,struct act8945a_charger*) ; 
 int /*<<< orphan*/  act8945a_charger_get_property ; 
 int /*<<< orphan*/  act8945a_charger_props ; 
 int FUNC5 (struct act8945a_charger*) ; 
 int FUNC6 (struct act8945a_charger*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  act8945a_status_changed ; 
 int /*<<< orphan*/  act8945a_work ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct act8945a_charger* FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_3__*,struct power_supply_config*) ; 
 int FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct act8945a_charger*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct act8945a_charger*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct act8945a_charger *charger;
	struct power_supply_config psy_cfg = {};
	int irq, ret;

	charger = FUNC9(&pdev->dev, sizeof(*charger), GFP_KERNEL);
	if (!charger)
		return -ENOMEM;

	charger->regmap = FUNC8(pdev->dev.parent, NULL);
	if (!charger->regmap) {
		FUNC7(&pdev->dev, "Parent did not provide regmap\n");
		return -EINVAL;
	}

	ret = FUNC4(&pdev->dev, charger);
	if (ret)
		return ret;

	irq = FUNC12(pdev->dev.of_node, 0);
	if (irq <= 0) {
		FUNC7(&pdev->dev, "failed to find IRQ number\n");
		return irq ?: -ENXIO;
	}

	ret = FUNC11(&pdev->dev, irq, act8945a_status_changed,
			       IRQF_TRIGGER_FALLING, "act8945a_interrupt",
			       charger);
	if (ret) {
		FUNC7(&pdev->dev, "failed to request nIRQ pin IRQ\n");
		return ret;
	}

	charger->desc.name = "act8945a-charger";
	charger->desc.get_property = act8945a_charger_get_property;
	charger->desc.properties = act8945a_charger_props;
	charger->desc.num_properties = FUNC0(act8945a_charger_props);

	ret = FUNC6(charger, &charger->desc.type);
	if (ret)
		return -EINVAL;

	psy_cfg.of_node	= pdev->dev.of_node;
	psy_cfg.drv_data = charger;

	charger->psy = FUNC10(&pdev->dev,
						  &charger->desc,
						  &psy_cfg);
	if (FUNC2(charger->psy)) {
		FUNC7(&pdev->dev, "failed to register power supply\n");
		return FUNC3(charger->psy);
	}

	FUNC13(pdev, charger);

	FUNC1(&charger->work, act8945a_work);

	ret = FUNC5(charger);
	if (ret)
		return -EIO;

	charger->init_done = true;

	return 0;
}