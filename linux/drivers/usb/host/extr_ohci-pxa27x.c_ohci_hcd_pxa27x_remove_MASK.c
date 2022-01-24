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
struct pxa27x_ohci {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct usb_hcd* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa27x_ohci*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa27x_ohci*,int /*<<< orphan*/ *) ; 
 struct pxa27x_ohci* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC0(pdev);
	struct pxa27x_ohci *pxa_ohci = FUNC3(hcd);
	unsigned int i;

	FUNC5(hcd);
	FUNC2(pxa_ohci, &pdev->dev);

	for (i = 0; i < 3; ++i)
		FUNC1(pxa_ohci, i, false);

	FUNC4(hcd);
	return 0;
}