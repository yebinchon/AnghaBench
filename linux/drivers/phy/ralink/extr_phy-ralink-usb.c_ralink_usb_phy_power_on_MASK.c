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
typedef  int u32 ;
struct ralink_usb_phy {TYPE_1__* phy; int /*<<< orphan*/  sysctl; scalar_t__ base; int /*<<< orphan*/  rstdev; int /*<<< orphan*/  rsthost; int /*<<< orphan*/  clk; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT_SYSCFG1_USB0_HOST_MODE ; 
 int /*<<< orphan*/  RT_SYSC_REG_CLKCFG1 ; 
 int /*<<< orphan*/  RT_SYSC_REG_SYSCFG1 ; 
 int /*<<< orphan*/  RT_SYSC_REG_USB_PHY_CFG ; 
 int UDEV_WAKEUP ; 
 int USB_PHY_UTMI_8B60M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ralink_usb_phy* FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct ralink_usb_phy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct phy *_phy)
{
	struct ralink_usb_phy *phy = FUNC2(_phy);
	u32 t;

	/* enable the phy */
	FUNC5(phy->sysctl, RT_SYSC_REG_CLKCFG1,
			   phy->clk, phy->clk);

	/* setup host mode */
	FUNC5(phy->sysctl, RT_SYSC_REG_SYSCFG1,
			   RT_SYSCFG1_USB0_HOST_MODE,
			   RT_SYSCFG1_USB0_HOST_MODE);

	/* deassert the reset lines */
	FUNC6(phy->rsthost);
	FUNC6(phy->rstdev);

	/*
	 * The SDK kernel had a delay of 100ms. however on device
	 * testing showed that 10ms is enough
	 */
	FUNC1(10);

	if (phy->base)
		FUNC3(phy);

	/* print some status info */
	FUNC4(phy->sysctl, RT_SYSC_REG_USB_PHY_CFG, &t);
	FUNC0(&phy->phy->dev, "remote usb device wakeup %s\n",
		(t & UDEV_WAKEUP) ? ("enabled") : ("disabled"));
	if (t & USB_PHY_UTMI_8B60M)
		FUNC0(&phy->phy->dev, "UTMI 8bit 60MHz\n");
	else
		FUNC0(&phy->phy->dev, "UTMI 16bit 30MHz\n");

	return 0;
}