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
 struct usb_hcd* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC0(pdev);

	FUNC2(hcd);

	FUNC1(hcd);

	return 0;
}