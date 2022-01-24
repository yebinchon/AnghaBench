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
struct device {int /*<<< orphan*/  of_node; } ;
struct bcma_hcd_device {struct bcma_device* core; } ;
struct TYPE_2__ {int rev; } ;
struct bcma_device {int /*<<< orphan*/  bus; TYPE_1__ id; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CC_PMU_CTL ; 
 int /*<<< orphan*/  BCMA_CC_PMU_CTL_PLL_UPD ; 
 int BCMA_CC_PMU_PLLCTL_ADDR ; 
 int BCMA_CC_PMU_PLLCTL_DATA ; 
 int BCMA_CLKCTLST ; 
 int BCMA_CLKCTLST_FORCEHT ; 
 int BCMA_CLKCTLST_HQCLKREQ ; 
 int /*<<< orphan*/  BCMA_CORE_PMU ; 
 int /*<<< orphan*/  BCMA_IOCTL ; 
 int BCMA_IOCTL_CLK ; 
 int BCMA_IOCTL_FGC ; 
 int /*<<< orphan*/  BCMA_RESET_CTL ; 
 int BCMA_RESET_CTL_RESET ; 
 int ENOENT ; 
 int USB_BCMA_CLKCTLST_USB_CLK_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_device*,int /*<<< orphan*/ ,int) ; 
 struct bcma_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct bcma_hcd_device *usb_dev)
{
	struct bcma_device *core = usb_dev->core;
	struct device *dev = &core->dev;
	struct bcma_device *pmu_core;

	FUNC7(10000, 20000);
	if (core->id.rev < 5)
		return 0;

	pmu_core = FUNC1(core->bus, BCMA_CORE_PMU);
	if (!pmu_core) {
		FUNC4(dev, "Could not find PMU core\n");
		return -ENOENT;
	}

	/* Take USB core out of reset */
	FUNC0(core, BCMA_IOCTL, BCMA_IOCTL_CLK | BCMA_IOCTL_FGC);
	FUNC7(100, 200);
	FUNC0(core, BCMA_RESET_CTL, BCMA_RESET_CTL_RESET);
	FUNC7(100, 200);
	FUNC0(core, BCMA_RESET_CTL, 0);
	FUNC7(100, 200);
	FUNC0(core, BCMA_IOCTL, BCMA_IOCTL_CLK);
	FUNC7(100, 200);

	/* Enable Misc PLL */
	FUNC3(core, BCMA_CLKCTLST, BCMA_CLKCTLST_FORCEHT |
					  BCMA_CLKCTLST_HQCLKREQ |
					  USB_BCMA_CLKCTLST_USB_CLK_REQ);
	FUNC7(100, 200);

	FUNC3(core, 0x510, 0xc7f85000);
	FUNC3(core, 0x510, 0xc7f85003);
	FUNC7(300, 600);

	/* Program USB PHY PLL parameters */
	FUNC3(pmu_core, BCMA_CC_PMU_PLLCTL_ADDR, 0x6);
	FUNC3(pmu_core, BCMA_CC_PMU_PLLCTL_DATA, 0x005360c1);
	FUNC7(100, 200);
	FUNC3(pmu_core, BCMA_CC_PMU_PLLCTL_ADDR, 0x7);
	FUNC3(pmu_core, BCMA_CC_PMU_PLLCTL_DATA, 0x0);
	FUNC7(100, 200);
	FUNC2(pmu_core, BCMA_CC_PMU_CTL, BCMA_CC_PMU_CTL_PLL_UPD);
	FUNC7(100, 200);

	FUNC3(core, 0x510, 0x7f8d007);
	FUNC6(1000);

	/* Take controller out of reset */
	FUNC3(core, 0x200, 0x4ff);
	FUNC7(25, 50);
	FUNC3(core, 0x200, 0x6ff);
	FUNC7(25, 50);
	FUNC3(core, 0x200, 0x7ff);
	FUNC7(25, 50);

	FUNC5(dev->of_node, NULL, dev);

	return 0;
}