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
typedef  size_t u32 ;
struct dwc3_ep {int flags; } ;
struct dwc3 {struct dwc3_ep** eps; } ;

/* Variables and functions */
 size_t DWC3_ENDPOINTS_NUM ; 
 int DWC3_EP_STALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct dwc3_ep*) ; 

__attribute__((used)) static void FUNC2(struct dwc3 *dwc)
{
	u32 epnum;

	for (epnum = 1; epnum < DWC3_ENDPOINTS_NUM; epnum++) {
		struct dwc3_ep *dep;
		int ret;

		dep = dwc->eps[epnum];
		if (!dep)
			continue;

		if (!(dep->flags & DWC3_EP_STALL))
			continue;

		dep->flags &= ~DWC3_EP_STALL;

		ret = FUNC1(dep);
		FUNC0(ret);
	}
}