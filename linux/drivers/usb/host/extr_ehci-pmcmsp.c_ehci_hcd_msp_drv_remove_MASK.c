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

/* Variables and functions */
 int /*<<< orphan*/  MSP_PIN_USB0_HOST_DEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_hcd*,struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC1(pdev);

	FUNC2(hcd, pdev);

	/* free TWI GPIO USB_HOST_DEV pin */
	FUNC0(MSP_PIN_USB0_HOST_DEV);

	return 0;
}