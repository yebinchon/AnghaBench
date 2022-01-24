#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct da8xx_usb_phy {int /*<<< orphan*/  usb11_phy; int /*<<< orphan*/  usb20_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 struct da8xx_usb_phy* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct da8xx_usb_phy *d_phy = FUNC1(pdev);

	if (!pdev->dev.of_node) {
		FUNC0(d_phy->usb20_phy, "usb-phy", "musb-da8xx");
		FUNC0(d_phy->usb11_phy, "usb-phy", "ohci-da8xx");
	}

	return 0;
}