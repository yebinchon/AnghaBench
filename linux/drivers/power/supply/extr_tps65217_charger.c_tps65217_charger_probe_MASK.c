#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tps65217_charger {TYPE_1__* dev; struct task_struct* poll_task; struct task_struct* psy; struct tps65217* tps; } ;
struct tps65217 {int dummy; } ;
struct task_struct {int dummy; } ;
struct power_supply_config {struct tps65217_charger* drv_data; int /*<<< orphan*/  of_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int NUM_CHARGER_IRQS ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 struct tps65217* FUNC3 (int /*<<< orphan*/ ) ; 
 struct tps65217_charger* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int,struct tps65217_charger*),int /*<<< orphan*/ ,char*,struct tps65217_charger*) ; 
 struct task_struct* FUNC7 (int /*<<< orphan*/ ,struct tps65217_charger*,char*) ; 
 int FUNC8 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct tps65217_charger*) ; 
 int /*<<< orphan*/  tps65217_charger_desc ; 
 int /*<<< orphan*/  FUNC10 (int,struct tps65217_charger*) ; 
 int /*<<< orphan*/  tps65217_charger_poll_task ; 
 int FUNC11 (struct tps65217_charger*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct tps65217 *tps = FUNC3(pdev->dev.parent);
	struct tps65217_charger *charger;
	struct power_supply_config cfg = {};
	struct task_struct *poll_task;
	int irq[NUM_CHARGER_IRQS];
	int ret;
	int i;

	charger = FUNC4(&pdev->dev, sizeof(*charger), GFP_KERNEL);
	if (!charger)
		return -ENOMEM;

	FUNC9(pdev, charger);
	charger->tps = tps;
	charger->dev = &pdev->dev;

	cfg.of_node = pdev->dev.of_node;
	cfg.drv_data = charger;

	charger->psy = FUNC5(&pdev->dev,
						  &tps65217_charger_desc,
						  &cfg);
	if (FUNC0(charger->psy)) {
		FUNC2(&pdev->dev, "failed: power supply register\n");
		return FUNC1(charger->psy);
	}

	irq[0] = FUNC8(pdev, "USB");
	irq[1] = FUNC8(pdev, "AC");

	ret = FUNC11(charger);
	if (ret < 0) {
		FUNC2(charger->dev, "charger config failed, err %d\n", ret);
		return ret;
	}

	/* Create a polling thread if an interrupt is invalid */
	if (irq[0] < 0 || irq[1] < 0) {
		poll_task = FUNC7(tps65217_charger_poll_task,
					charger, "ktps65217charger");
		if (FUNC0(poll_task)) {
			ret = FUNC1(poll_task);
			FUNC2(charger->dev,
				"Unable to run kthread err %d\n", ret);
			return ret;
		}

		charger->poll_task = poll_task;
		return 0;
	}

	/* Create IRQ threads for charger interrupts */
	for (i = 0; i < NUM_CHARGER_IRQS; i++) {
		ret = FUNC6(&pdev->dev, irq[i], NULL,
						tps65217_charger_irq,
						0, "tps65217-charger",
						charger);
		if (ret) {
			FUNC2(charger->dev,
				"Unable to register irq %d err %d\n", irq[i],
				ret);
			return ret;
		}

		/* Check current state */
		FUNC10(-1, charger);
	}

	return 0;
}