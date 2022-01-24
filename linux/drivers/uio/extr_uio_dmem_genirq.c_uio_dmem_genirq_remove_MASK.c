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
struct uio_dmem_genirq_platdata {struct uio_dmem_genirq_platdata* uioinfo; int /*<<< orphan*/ * irqcontrol; int /*<<< orphan*/ * handler; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uio_dmem_genirq_platdata*) ; 
 struct uio_dmem_genirq_platdata* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct uio_dmem_genirq_platdata*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct uio_dmem_genirq_platdata *priv = FUNC1(pdev);

	FUNC3(priv->uioinfo);
	FUNC2(&pdev->dev);

	priv->uioinfo->handler = NULL;
	priv->uioinfo->irqcontrol = NULL;

	/* kfree uioinfo for OF */
	if (pdev->dev.of_node)
		FUNC0(priv->uioinfo);

	FUNC0(priv);
	return 0;
}