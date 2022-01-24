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
struct ab8500_usb {scalar_t__ mode; int /*<<< orphan*/  phy; int /*<<< orphan*/  phy_dis_work; } ;

/* Variables and functions */
 scalar_t__ USB_HOST ; 
 scalar_t__ USB_PERIPHERAL ; 
 int /*<<< orphan*/  FUNC0 (struct ab8500_usb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ab8500_usb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ab8500_usb* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct ab8500_usb *ab = FUNC3(pdev);

	FUNC2(&ab->phy_dis_work);

	FUNC4(&ab->phy);

	if (ab->mode == USB_HOST)
		FUNC0(ab);
	else if (ab->mode == USB_PERIPHERAL)
		FUNC1(ab);

	return 0;
}