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
struct rproc {scalar_t__ priv; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct da8xx_rproc {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct rproc* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rproc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rproc*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct rproc *rproc = FUNC2(pdev);
	struct da8xx_rproc *drproc = (struct da8xx_rproc *)rproc->priv;
	struct device *dev = &pdev->dev;

	/*
	 * The devm subsystem might end up releasing things before
	 * freeing the irq, thus allowing an interrupt to sneak in while
	 * the device is being removed.  This should prevent that.
	 */
	FUNC0(drproc->irq);

	FUNC3(rproc);
	FUNC4(rproc);
	if (dev->of_node)
		FUNC1(dev);

	return 0;
}