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
struct pxa25x_udc {int /*<<< orphan*/ * transceiver; scalar_t__ pullup; int /*<<< orphan*/  gadget; scalar_t__ driver; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pxa25x_udc* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa25x_udc*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa25x_udc*) ; 
 int /*<<< orphan*/ * the_controller ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct pxa25x_udc *dev = FUNC1(pdev);

	if (dev->driver)
		return -EBUSY;

	FUNC4(&dev->gadget);
	dev->pullup = 0;
	FUNC2(dev);

	FUNC3(dev);

	if (!FUNC0(dev->transceiver))
		dev->transceiver = NULL;

	the_controller = NULL;
	return 0;
}