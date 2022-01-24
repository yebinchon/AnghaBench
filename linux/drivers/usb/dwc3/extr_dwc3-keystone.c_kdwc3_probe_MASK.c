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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct dwc3_keystone {struct device* dev; int /*<<< orphan*/  usbss; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct dwc3_keystone* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dwc3_keystone*) ; 
 int /*<<< orphan*/  dwc3_keystone_interrupt ; 
 int /*<<< orphan*/  FUNC7 (struct dwc3_keystone*) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc3_keystone*) ; 
 scalar_t__ FUNC9 (struct device_node*,char*) ; 
 int FUNC10 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct dwc3_keystone*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device		*dev = &pdev->dev;
	struct device_node	*node = pdev->dev.of_node;
	struct dwc3_keystone	*kdwc;
	int			error, irq;

	kdwc = FUNC4(dev, sizeof(*kdwc), GFP_KERNEL);
	if (!kdwc)
		return -ENOMEM;

	FUNC12(pdev, kdwc);

	kdwc->dev = dev;

	kdwc->usbss = FUNC5(pdev, 0);
	if (FUNC0(kdwc->usbss))
		return FUNC1(kdwc->usbss);

	FUNC14(kdwc->dev);

	error = FUNC15(kdwc->dev);
	if (error < 0) {
		FUNC2(kdwc->dev, "pm_runtime_get_sync failed, error %d\n",
			error);
		goto err_irq;
	}

	/* IRQ processing not required currently for AM65 */
	if (FUNC9(node, "ti,am654-dwc3"))
		goto skip_irq;

	irq = FUNC11(pdev, 0);
	if (irq < 0) {
		error = irq;
		goto err_irq;
	}

	error = FUNC6(dev, irq, dwc3_keystone_interrupt, IRQF_SHARED,
			FUNC3(dev), kdwc);
	if (error) {
		FUNC2(dev, "failed to request IRQ #%d --> %d\n",
				irq, error);
		goto err_irq;
	}

	FUNC8(kdwc);

skip_irq:
	error = FUNC10(node, NULL, NULL, dev);
	if (error) {
		FUNC2(&pdev->dev, "failed to create dwc3 core\n");
		goto err_core;
	}

	return 0;

err_core:
	FUNC7(kdwc);
err_irq:
	FUNC16(kdwc->dev);
	FUNC13(kdwc->dev);

	return error;
}