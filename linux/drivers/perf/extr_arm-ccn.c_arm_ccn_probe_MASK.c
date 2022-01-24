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
struct resource {unsigned int start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct arm_ccn {unsigned int irq; void* xp; void* node; int /*<<< orphan*/  num_xps; int /*<<< orphan*/ * dev; int /*<<< orphan*/  num_nodes; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ CCN_MN_ERRINT_STATUS ; 
 int /*<<< orphan*/  CCN_MN_ERRINT_STATUS__PMU_EVENTS__DISABLE ; 
 int CCN_MN_ERRINT_STATUS__PMU_EVENTS__DISABLED ; 
 int /*<<< orphan*/  CCN_MN_ERRINT_STATUS__PMU_EVENTS__ENABLE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_NOBALANCING ; 
 int IRQF_NO_THREAD ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct arm_ccn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arm_ccn_get_nodes_num ; 
 int /*<<< orphan*/  arm_ccn_init_nodes ; 
 int /*<<< orphan*/  arm_ccn_irq_handler ; 
 int FUNC3 (struct arm_ccn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct arm_ccn* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct arm_ccn*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct arm_ccn*) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct arm_ccn *ccn;
	struct resource *res;
	unsigned int irq;
	int err;

	ccn = FUNC7(&pdev->dev, sizeof(*ccn), GFP_KERNEL);
	if (!ccn)
		return -ENOMEM;
	ccn->dev = &pdev->dev;
	FUNC10(pdev, ccn);

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	ccn->base = FUNC5(ccn->dev, res);
	if (FUNC0(ccn->base))
		return FUNC1(ccn->base);

	res = FUNC9(pdev, IORESOURCE_IRQ, 0);
	if (!res)
		return -EINVAL;
	irq = res->start;

	/* Check if we can use the interrupt */
	FUNC12(CCN_MN_ERRINT_STATUS__PMU_EVENTS__DISABLE,
			ccn->base + CCN_MN_ERRINT_STATUS);
	if (FUNC11(ccn->base + CCN_MN_ERRINT_STATUS) &
			CCN_MN_ERRINT_STATUS__PMU_EVENTS__DISABLED) {
		/* Can set 'disable' bits, so can acknowledge interrupts */
		FUNC12(CCN_MN_ERRINT_STATUS__PMU_EVENTS__ENABLE,
				ccn->base + CCN_MN_ERRINT_STATUS);
		err = FUNC8(ccn->dev, irq, arm_ccn_irq_handler,
				       IRQF_NOBALANCING | IRQF_NO_THREAD,
				       FUNC4(ccn->dev), ccn);
		if (err)
			return err;

		ccn->irq = irq;
	}


	/* Build topology */

	err = FUNC2(ccn, arm_ccn_get_nodes_num);
	if (err)
		return err;

	ccn->node = FUNC6(ccn->dev, ccn->num_nodes, sizeof(*ccn->node),
				 GFP_KERNEL);
	ccn->xp = FUNC6(ccn->dev, ccn->num_xps, sizeof(*ccn->node),
			       GFP_KERNEL);
	if (!ccn->node || !ccn->xp)
		return -ENOMEM;

	err = FUNC2(ccn, arm_ccn_init_nodes);
	if (err)
		return err;

	return FUNC3(ccn);
}