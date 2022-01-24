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
typedef  int u32 ;
struct dwc3 {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DWC3_GUSB2PHYACC_BUSY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dwc3 *dwc)
{
	unsigned count = 1000;
	u32 reg;

	while (count--) {
		reg = FUNC2(dwc->regs, FUNC0(0));
		if (!(reg & DWC3_GUSB2PHYACC_BUSY))
			return 0;
		FUNC1();
	}

	return -ETIMEDOUT;
}