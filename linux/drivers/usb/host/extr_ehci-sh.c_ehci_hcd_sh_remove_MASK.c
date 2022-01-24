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
struct platform_device {int dummy; } ;
struct ehci_sh_priv {int /*<<< orphan*/  iclk; int /*<<< orphan*/  fclk; struct usb_hcd* hcd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ehci_sh_priv* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct ehci_sh_priv *priv = FUNC1(pdev);
	struct usb_hcd *hcd = priv->hcd;

	FUNC3(hcd);
	FUNC2(hcd);

	FUNC0(priv->fclk);
	FUNC0(priv->iclk);

	return 0;
}