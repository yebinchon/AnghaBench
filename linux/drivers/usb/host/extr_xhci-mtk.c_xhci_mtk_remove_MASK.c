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
struct xhci_hcd_mtk {struct usb_hcd* hcd; } ;
struct xhci_hcd {struct usb_hcd* shared_hcd; } ;
struct usb_hcd {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct xhci_hcd* FUNC1 (struct usb_hcd*) ; 
 struct xhci_hcd_mtk* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd_mtk*) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd_mtk*) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd_mtk*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *dev)
{
	struct xhci_hcd_mtk *mtk = FUNC2(dev);
	struct usb_hcd	*hcd = mtk->hcd;
	struct xhci_hcd	*xhci = FUNC1(hcd);
	struct usb_hcd  *shared_hcd = xhci->shared_hcd;

	FUNC6(shared_hcd);
	xhci->shared_hcd = NULL;
	FUNC0(&dev->dev, false);

	FUNC6(hcd);
	FUNC5(shared_hcd);
	FUNC5(hcd);
	FUNC9(mtk);
	FUNC7(mtk);
	FUNC8(mtk);
	FUNC4(&dev->dev);
	FUNC3(&dev->dev);

	return 0;
}