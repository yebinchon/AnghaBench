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
struct usb_hcd {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct omap_hcd {int nports; scalar_t__* phy; } ;
struct TYPE_2__ {scalar_t__ priv; } ;

/* Variables and functions */
 struct usb_hcd* FUNC0 (struct device*) ; 
 TYPE_1__* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct usb_hcd *hcd = FUNC0(dev);
	struct omap_hcd *omap = (struct omap_hcd *)FUNC1(hcd)->priv;
	int i;

	FUNC6(hcd);

	for (i = 0; i < omap->nports; i++) {
		if (omap->phy[i])
			FUNC4(omap->phy[i]);
	}

	FUNC5(hcd);
	FUNC3(dev);
	FUNC2(dev);

	return 0;
}