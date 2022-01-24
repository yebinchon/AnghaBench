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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * isp1301_i2c_client ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct usb_hcd* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  usb_host_clk ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC2(pdev);

	FUNC4(hcd);
	FUNC1();
	FUNC3(hcd);
	FUNC0(usb_host_clk);
	isp1301_i2c_client = NULL;

	return 0;
}