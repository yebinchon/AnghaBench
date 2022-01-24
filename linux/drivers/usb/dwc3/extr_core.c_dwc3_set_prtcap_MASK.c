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
typedef  int /*<<< orphan*/  u32 ;
struct dwc3 {int /*<<< orphan*/  current_dr_role; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_GCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DWC3_GCTL_PRTCAP_OTG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct dwc3 *dwc, u32 mode)
{
	u32 reg;

	reg = FUNC1(dwc->regs, DWC3_GCTL);
	reg &= ~(FUNC0(DWC3_GCTL_PRTCAP_OTG));
	reg |= FUNC0(mode);
	FUNC2(dwc->regs, DWC3_GCTL, reg);

	dwc->current_dr_role = mode;
}