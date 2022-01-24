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
struct dwc2_hsotg_ep {int dir_in; scalar_t__ target_frame; int interval; int /*<<< orphan*/  index; int /*<<< orphan*/  isochronous; struct dwc2_hsotg* parent; } ;
struct dwc2_hsotg {scalar_t__ frame_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DOEPMSK ; 
 int /*<<< orphan*/  DOEPMSK_OUTTKNEPDISMSK ; 
 int /*<<< orphan*/  DXEPCTL_SETEVENFR ; 
 int /*<<< orphan*/  DXEPCTL_SETODDFR ; 
 scalar_t__ TARGET_FRAME_INITIAL ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg_ep*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg_ep*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct dwc2_hsotg*) ; 

__attribute__((used)) static void FUNC7(struct dwc2_hsotg_ep *ep)
{
	struct dwc2_hsotg *hsotg = ep->parent;
	int dir_in = ep->dir_in;
	u32 doepmsk;

	if (dir_in || !ep->isochronous)
		return;

	if (FUNC6(hsotg)) {
		if (ep->target_frame == TARGET_FRAME_INITIAL) {
			/* Start first ISO Out */
			ep->target_frame = hsotg->frame_number;
			FUNC2(ep);
		}
		return;
	}

	if (ep->interval > 1 &&
	    ep->target_frame == TARGET_FRAME_INITIAL) {
		u32 ctrl;

		ep->target_frame = hsotg->frame_number;
		FUNC1(ep);

		ctrl = FUNC4(hsotg, FUNC0(ep->index));
		if (ep->target_frame & 0x1)
			ctrl |= DXEPCTL_SETODDFR;
		else
			ctrl |= DXEPCTL_SETEVENFR;

		FUNC5(hsotg, ctrl, FUNC0(ep->index));
	}

	FUNC3(ep);
	doepmsk = FUNC4(hsotg, DOEPMSK);
	doepmsk &= ~DOEPMSK_OUTTKNEPDISMSK;
	FUNC5(hsotg, doepmsk, DOEPMSK);
}