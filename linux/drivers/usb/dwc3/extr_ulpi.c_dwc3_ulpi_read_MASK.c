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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct dwc3 {int /*<<< orphan*/  regs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int DWC3_GUSB2PHYACC_NEWREGREQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int DWC3_GUSB2PHYCFG_SUSPHY ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct dwc3* FUNC4 (struct device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct device *dev, u8 addr)
{
	struct dwc3 *dwc = FUNC4(dev);
	u32 reg;
	int ret;

	reg = FUNC5(dwc->regs, FUNC2(0));
	if (reg & DWC3_GUSB2PHYCFG_SUSPHY) {
		reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
		FUNC7(dwc->regs, FUNC2(0), reg);
	}

	reg = DWC3_GUSB2PHYACC_NEWREGREQ | FUNC3(addr);
	FUNC7(dwc->regs, FUNC0(0), reg);

	ret = FUNC6(dwc);
	if (ret)
		return ret;

	reg = FUNC5(dwc->regs, FUNC0(0));

	return FUNC1(reg);
}