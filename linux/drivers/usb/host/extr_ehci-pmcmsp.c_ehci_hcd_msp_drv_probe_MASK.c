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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MSP_PIN_USB0_HOST_DEV ; 
 int /*<<< orphan*/  ehci_msp_hc_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	int ret;

	FUNC1("In ehci_hcd_msp_drv_probe");

	if (FUNC2())
		return -ENODEV;

	FUNC0(MSP_PIN_USB0_HOST_DEV, "USB0_HOST_DEV_GPIO");

	ret = FUNC3(&ehci_msp_hc_driver, pdev);

	return ret;
}