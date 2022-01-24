#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {TYPE_1__* usb_phy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fsl_usb2_platform_data {int /*<<< orphan*/  (* exit ) (struct platform_device*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct fsl_usb2_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_hcd* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct fsl_usb2_platform_data *pdata = FUNC1(&pdev->dev);
	struct usb_hcd *hcd = FUNC3(pdev);

	if (!FUNC0(hcd->usb_phy)) {
		FUNC2(hcd->usb_phy->otg, NULL);
		FUNC6(hcd->usb_phy);
	}

	FUNC7(hcd);

	/*
	 * do platform specific un-initialization:
	 * release iomux pins, disable clock, etc.
	 */
	if (pdata->exit)
		pdata->exit(pdev);
	FUNC5(hcd);

	return 0;
}