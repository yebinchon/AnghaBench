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
struct amvdec_core {int /*<<< orphan*/  esparser_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct amvdec_core*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  esparser_isr ; 
 int FUNC5 (struct platform_device*,char*) ; 

int FUNC6(struct platform_device *pdev, struct amvdec_core *core)
{
	struct device *dev = &pdev->dev;
	int ret;
	int irq;

	irq = FUNC5(pdev, "esparser");
	if (irq < 0)
		return irq;

	ret = FUNC3(dev, irq, esparser_isr, IRQF_SHARED,
			       "esparserirq", core);
	if (ret) {
		FUNC2(dev, "Failed requesting ESPARSER IRQ\n");
		return ret;
	}

	core->esparser_reset =
		FUNC4(dev, "esparser");
	if (FUNC0(core->esparser_reset)) {
		FUNC2(dev, "Failed to get esparser_reset\n");
		return FUNC1(core->esparser_reset);
	}

	return 0;
}