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
struct phy {int dummy; } ;
struct mvebu_a3700_utmi {scalar_t__ regs; TYPE_1__* caps; } ;
struct TYPE_2__ {int usb32; } ;

/* Variables and functions */
 int PHY_PU_OTG ; 
 int RB_USB2PHY_PU ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ USB2_PHY_OTG_CTRL ; 
 struct mvebu_a3700_utmi* FUNC2 (struct phy*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct phy *phy)
{
	struct mvebu_a3700_utmi *utmi = FUNC2(phy);
	int usb32 = utmi->caps->usb32;
	u32 reg;

	/* Disable PHY pull-up and enable USB2 suspend */
	reg = FUNC3(utmi->regs + FUNC1(usb32));
	reg &= ~(RB_USB2PHY_PU | FUNC0(usb32));
	FUNC4(reg, utmi->regs + FUNC1(usb32));

	/* Power down OTG module */
	if (usb32) {
		reg = FUNC3(utmi->regs + USB2_PHY_OTG_CTRL);
		reg &= ~PHY_PU_OTG;
		FUNC4(reg, utmi->regs + USB2_PHY_OTG_CTRL);
	}

	return 0;
}