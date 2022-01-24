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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct da9150_charger {int dummy; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 struct da9150_charger* FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*,char const*) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct da9150_charger*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
				       irq_handler_t handler,
				       const char *irq_name)
{
	struct device *dev = &pdev->dev;
	struct da9150_charger *charger = FUNC1(pdev);
	int irq, ret;

	irq = FUNC2(pdev, irq_name);
	if (irq < 0) {
		FUNC0(dev, "Failed to get IRQ CHG_STATUS: %d\n", irq);
		return irq;
	}

	ret = FUNC3(irq, NULL, handler, IRQF_ONESHOT, irq_name,
				   charger);
	if (ret)
		FUNC0(dev, "Failed to request IRQ %d: %d\n", irq, ret);

	return ret;
}