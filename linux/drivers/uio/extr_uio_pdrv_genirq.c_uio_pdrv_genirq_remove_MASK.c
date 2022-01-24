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
struct uio_pdrv_genirq_platdata {TYPE_1__* uioinfo; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * irqcontrol; int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 struct uio_pdrv_genirq_platdata* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct uio_pdrv_genirq_platdata *priv = FUNC0(pdev);

	FUNC2(priv->uioinfo);
	FUNC1(&pdev->dev);

	priv->uioinfo->handler = NULL;
	priv->uioinfo->irqcontrol = NULL;

	return 0;
}