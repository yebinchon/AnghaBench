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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct cdns3 {int /*<<< orphan*/  dev; int /*<<< orphan*/  xhci_res; struct platform_device* host_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS3_XHCI_RESOURCES_NUM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct cdns3*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct cdns3 *cdns)
{
	struct platform_device *xhci;
	int ret;

	FUNC0(cdns, 1);

	xhci = FUNC4("xhci-hcd", PLATFORM_DEVID_AUTO);
	if (!xhci) {
		FUNC1(cdns->dev, "couldn't allocate xHCI device\n");
		return -ENOMEM;
	}

	xhci->dev.parent = cdns->dev;
	cdns->host_dev = xhci;

	ret = FUNC3(xhci, cdns->xhci_res,
					    CDNS3_XHCI_RESOURCES_NUM);
	if (ret) {
		FUNC1(cdns->dev, "couldn't add resources to xHCI device\n");
		goto err1;
	}

	ret = FUNC2(xhci);
	if (ret) {
		FUNC1(cdns->dev, "failed to register xHCI device\n");
		goto err1;
	}

	return 0;
err1:
	FUNC5(xhci);
	return ret;
}