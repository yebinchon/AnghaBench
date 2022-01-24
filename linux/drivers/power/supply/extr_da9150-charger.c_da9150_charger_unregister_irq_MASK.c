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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct da9150_charger*) ; 
 struct da9150_charger* FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct platform_device*,char const*) ; 

__attribute__((used)) static void FUNC4(struct platform_device *pdev,
					  const char *irq_name)
{
	struct device *dev = &pdev->dev;
	struct da9150_charger *charger = FUNC2(pdev);
	int irq;

	irq = FUNC3(pdev, irq_name);
	if (irq < 0) {
		FUNC0(dev, "Failed to get IRQ CHG_STATUS: %d\n", irq);
		return;
	}

	FUNC1(irq, charger);
}