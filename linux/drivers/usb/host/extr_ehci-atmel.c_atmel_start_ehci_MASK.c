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
struct atmel_ehci_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atmel_ehci_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct atmel_ehci_priv* FUNC2 (struct usb_hcd*) ; 
 struct usb_hcd* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static void FUNC4(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC3(pdev);
	struct atmel_ehci_priv *atmel_ehci = FUNC2(hcd);

	FUNC1(&pdev->dev, "start\n");
	FUNC0(atmel_ehci);
}