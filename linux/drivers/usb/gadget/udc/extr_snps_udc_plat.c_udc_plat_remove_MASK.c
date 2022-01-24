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
struct udc {int /*<<< orphan*/  nb; int /*<<< orphan*/  edev; int /*<<< orphan*/  udc_phy; scalar_t__ drd_wq; int /*<<< orphan*/  driver; int /*<<< orphan*/  gadget; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCON_USB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct udc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct udc* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct udc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct udc *dev;

	dev = FUNC8(pdev);

	FUNC11(&dev->gadget);
	/* gadget driver must not be registered */
	if (FUNC0(dev->driver))
		return 0;

	/* dma pool cleanup */
	FUNC5(dev);

	FUNC10(dev);

	FUNC9(pdev, NULL);

	if (dev->drd_wq) {
		FUNC4(dev->drd_wq);
		FUNC1(dev->drd_wq);
	}

	FUNC7(dev->udc_phy);
	FUNC6(dev->udc_phy);
	FUNC3(dev->edev, EXTCON_USB, &dev->nb);

	FUNC2(&pdev->dev, "Synopsys UDC platform driver removed\n");

	return 0;
}