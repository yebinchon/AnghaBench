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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;
struct TYPE_5__ {int /*<<< orphan*/ * sram; int /*<<< orphan*/  statf_h; int /*<<< orphan*/  statne_h; int /*<<< orphan*/ * irqen; int /*<<< orphan*/ * irqstat; int /*<<< orphan*/ * stat2; int /*<<< orphan*/ * irqsrc; int /*<<< orphan*/ * stat1; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int QUEUES ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 TYPE_1__* FUNC6 (struct device*,struct resource*) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct platform_device*,int) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qmgr_irq ; 
 int /*<<< orphan*/  qmgr_irq1_a0 ; 
 int /*<<< orphan*/  qmgr_irq2_a0 ; 
 int qmgr_irq_1 ; 
 int qmgr_irq_2 ; 
 int /*<<< orphan*/  qmgr_lock ; 
 TYPE_1__* qmgr_regs ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int* used_sram_bitmap ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int i, err;
	irq_handler_t handler1, handler2;
	struct device *dev = &pdev->dev;
	struct resource *res;
	int irq1, irq2;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;
	qmgr_regs = FUNC6(dev, res);
	if (FUNC0(qmgr_regs))
		return FUNC1(qmgr_regs);

	irq1 = FUNC8(pdev, 0);
	if (irq1 <= 0)
		return irq1 ? irq1 : -EINVAL;
	qmgr_irq_1 = irq1;
	irq2 = FUNC8(pdev, 1);
	if (irq2 <= 0)
		return irq2 ? irq2 : -EINVAL;
	qmgr_irq_2 = irq2;

	/* reset qmgr registers */
	for (i = 0; i < 4; i++) {
		FUNC2(0x33333333, &qmgr_regs->stat1[i]);
		FUNC2(0, &qmgr_regs->irqsrc[i]);
	}
	for (i = 0; i < 2; i++) {
		FUNC2(0, &qmgr_regs->stat2[i]);
		FUNC2(0xFFFFFFFF, &qmgr_regs->irqstat[i]); /* clear */
		FUNC2(0, &qmgr_regs->irqen[i]);
	}

	FUNC2(0xFFFFFFFF, &qmgr_regs->statne_h);
	FUNC2(0, &qmgr_regs->statf_h);

	for (i = 0; i < QUEUES; i++)
		FUNC2(0, &qmgr_regs->sram[i]);

	if (FUNC3()) {
		handler1 = qmgr_irq1_a0;
		handler2 = qmgr_irq2_a0;
	} else
		handler1 = handler2 = qmgr_irq;

	err = FUNC7(dev, irq1, handler1, 0, "IXP4xx Queue Manager",
			       NULL);
	if (err) {
		FUNC4(dev, "failed to request IRQ%i (%i)\n",
			irq1, err);
		return err;
	}

	err = FUNC7(dev, irq2, handler2, 0, "IXP4xx Queue Manager",
			       NULL);
	if (err) {
		FUNC4(dev, "failed to request IRQ%i (%i)\n",
			irq2, err);
		return err;
	}

	used_sram_bitmap[0] = 0xF; /* 4 first pages reserved for config */
	FUNC10(&qmgr_lock);

	FUNC5(dev, "IXP4xx Queue Manager initialized.\n");
	return 0;
}