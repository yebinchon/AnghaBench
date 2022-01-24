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
typedef  int u8 ;
typedef  int u32 ;
struct dwc3 {int /*<<< orphan*/  regs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DWC3_GUSB2PHYACC_NEWREGREQ ; 
 int DWC3_GUSB2PHYACC_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DWC3_GUSB2PHYCFG_SUSPHY ; 
 int FUNC2 (int) ; 
 struct dwc3* FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct device *dev, u8 addr, u8 val)
{
	struct dwc3 *dwc = FUNC3(dev);
	u32 reg;

	reg = FUNC4(dwc->regs, FUNC1(0));
	if (reg & DWC3_GUSB2PHYCFG_SUSPHY) {
		reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
		FUNC6(dwc->regs, FUNC1(0), reg);
	}

	reg = DWC3_GUSB2PHYACC_NEWREGREQ | FUNC2(addr);
	reg |= DWC3_GUSB2PHYACC_WRITE | val;
	FUNC6(dwc->regs, FUNC0(0), reg);

	return FUNC5(dwc);
}