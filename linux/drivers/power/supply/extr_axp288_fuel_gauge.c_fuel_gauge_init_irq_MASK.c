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
struct axp288_fg_info {int* irq; TYPE_1__* pdev; int /*<<< orphan*/  regmap_irqc; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AXP288_FG_INTR_NUM ; 
 int /*<<< orphan*/  DEV_NAME ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct axp288_fg_info*) ; 
 int /*<<< orphan*/  fuel_gauge_thread_handler ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct axp288_fg_info*) ; 

__attribute__((used)) static void FUNC6(struct axp288_fg_info *info)
{
	int ret, i, pirq;

	for (i = 0; i < AXP288_FG_INTR_NUM; i++) {
		pirq = FUNC3(info->pdev, i);
		info->irq[i] = FUNC4(info->regmap_irqc, pirq);
		if (info->irq[i] < 0) {
			FUNC1(&info->pdev->dev,
				"regmap_irq get virq failed for IRQ %d: %d\n",
				pirq, info->irq[i]);
			info->irq[i] = -1;
			goto intr_failed;
		}
		ret = FUNC5(info->irq[i],
				NULL, fuel_gauge_thread_handler,
				IRQF_ONESHOT, DEV_NAME, info);
		if (ret) {
			FUNC1(&info->pdev->dev,
				"request irq failed for IRQ %d: %d\n",
				pirq, info->irq[i]);
			info->irq[i] = -1;
			goto intr_failed;
		} else {
			FUNC0(&info->pdev->dev, "HW IRQ %d -> VIRQ %d\n",
				pirq, info->irq[i]);
		}
	}
	return;

intr_failed:
	for (; i > 0; i--) {
		FUNC2(info->irq[i - 1], info);
		info->irq[i - 1] = -1;
	}
}