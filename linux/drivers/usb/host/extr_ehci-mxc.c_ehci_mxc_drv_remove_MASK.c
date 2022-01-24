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
struct usb_hcd {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mxc_usbh_platform_data {scalar_t__ otg; int /*<<< orphan*/  (* exit ) (struct platform_device*) ;} ;
struct ehci_mxc_priv {scalar_t__ phyclk; scalar_t__ ahbclk; scalar_t__ usbclk; } ;
struct ehci_hcd {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct mxc_usbh_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 struct ehci_hcd* FUNC2 (struct usb_hcd*) ; 
 struct usb_hcd* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mxc_usbh_platform_data *pdata = FUNC1(&pdev->dev);
	struct usb_hcd *hcd = FUNC3(pdev);
	struct ehci_hcd *ehci = FUNC2(hcd);
	struct ehci_mxc_priv *priv = (struct ehci_mxc_priv *) ehci->priv;

	FUNC7(hcd);

	if (pdata && pdata->exit)
		pdata->exit(pdev);

	if (pdata && pdata->otg)
		FUNC5(pdata->otg);

	FUNC0(priv->usbclk);
	FUNC0(priv->ahbclk);

	if (priv->phyclk)
		FUNC0(priv->phyclk);

	FUNC6(hcd);
	return 0;
}