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
typedef  int /*<<< orphan*/  u32 ;
struct dwc3_ep {int /*<<< orphan*/  number; struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_GDBGFIFOSPACE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

u32 FUNC5(struct dwc3_ep *dep, u8 type)
{
	struct dwc3		*dwc = dep->dwc;
	u32			reg;

	FUNC4(dwc->regs, DWC3_GDBGFIFOSPACE,
			FUNC0(dep->number) |
			FUNC2(type));

	reg = FUNC3(dwc->regs, DWC3_GDBGFIFOSPACE);

	return FUNC1(reg);
}