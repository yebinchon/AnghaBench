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
struct dwc3_ep {struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  ep0_trb_addr; scalar_t__ three_stage_setup; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_TRBCTL_CONTROL_STATUS2 ; 
 int /*<<< orphan*/  DWC3_TRBCTL_CONTROL_STATUS3 ; 
 int /*<<< orphan*/  FUNC0 (struct dwc3_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct dwc3_ep*) ; 

__attribute__((used)) static int FUNC2(struct dwc3_ep *dep)
{
	struct dwc3		*dwc = dep->dwc;
	u32			type;

	type = dwc->three_stage_setup ? DWC3_TRBCTL_CONTROL_STATUS3
		: DWC3_TRBCTL_CONTROL_STATUS2;

	FUNC0(dep, dwc->ep0_trb_addr, 0, type, false);
	return FUNC1(dep);
}