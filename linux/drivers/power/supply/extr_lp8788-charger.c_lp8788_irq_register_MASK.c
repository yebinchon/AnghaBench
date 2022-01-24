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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct lp8788_charger {scalar_t__ num_irqs; int /*<<< orphan*/  charger_work; } ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* LP8788_BATT_IRQ ; 
 char const* LP8788_CHG_IRQ ; 
 scalar_t__ LP8788_MAX_CHG_IRQS ; 
 char const* LP8788_PRSW_IRQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  lp8788_charger_event ; 
 int FUNC4 (struct platform_device*,struct lp8788_charger*,char const*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
				struct lp8788_charger *pchg)
{
	const char *name[] = {
		LP8788_CHG_IRQ, LP8788_PRSW_IRQ, LP8788_BATT_IRQ
	};
	int i;
	int ret;

	FUNC1(&pchg->charger_work, lp8788_charger_event);
	pchg->num_irqs = 0;

	for (i = 0; i < FUNC0(name); i++) {
		ret = FUNC4(pdev, pchg, name[i]);
		if (ret) {
			FUNC3(&pdev->dev, "irq setup failed: %s\n", name[i]);
			return ret;
		}
	}

	if (pchg->num_irqs > LP8788_MAX_CHG_IRQS) {
		FUNC2(&pdev->dev, "invalid total number of irqs: %d\n",
			pchg->num_irqs);
		return -EINVAL;
	}


	return 0;
}