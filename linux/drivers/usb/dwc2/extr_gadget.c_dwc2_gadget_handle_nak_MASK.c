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
typedef  int /*<<< orphan*/  u32 ;
struct dwc2_hsotg_ep {int dir_in; int target_frame; int interval; int /*<<< orphan*/  index; int /*<<< orphan*/  isochronous; struct dwc2_hsotg* parent; } ;
struct TYPE_2__ {scalar_t__ service_interval; } ;
struct dwc2_hsotg {int frame_number; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DXEPCTL_SETEVENFR ; 
 int /*<<< orphan*/  DXEPCTL_SETODDFR ; 
 int TARGET_FRAME_INITIAL ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg_ep*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_hsotg_ep*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,struct dwc2_hsotg_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dwc2_hsotg_ep*) ; 
 scalar_t__ FUNC8 (struct dwc2_hsotg*) ; 

__attribute__((used)) static void FUNC9(struct dwc2_hsotg_ep *hs_ep)
{
	struct dwc2_hsotg *hsotg = hs_ep->parent;
	int dir_in = hs_ep->dir_in;

	if (!dir_in || !hs_ep->isochronous)
		return;

	if (hs_ep->target_frame == TARGET_FRAME_INITIAL) {

		if (FUNC8(hsotg)) {
			hs_ep->target_frame = hsotg->frame_number;
			FUNC2(hs_ep);

			/* In service interval mode target_frame must
			 * be set to last (u)frame of the service interval.
			 */
			if (hsotg->params.service_interval) {
				/* Set target_frame to the first (u)frame of
				 * the service interval
				 */
				hs_ep->target_frame &= ~hs_ep->interval + 1;

				/* Set target_frame to the last (u)frame of
				 * the service interval
				 */
				FUNC2(hs_ep);
				FUNC1(hs_ep);
			}

			FUNC3(hs_ep);
			return;
		}

		hs_ep->target_frame = hsotg->frame_number;
		if (hs_ep->interval > 1) {
			u32 ctrl = FUNC5(hsotg,
					      FUNC0(hs_ep->index));
			if (hs_ep->target_frame & 0x1)
				ctrl |= DXEPCTL_SETODDFR;
			else
				ctrl |= DXEPCTL_SETEVENFR;

			FUNC6(hsotg, ctrl, FUNC0(hs_ep->index));
		}

		FUNC4(hsotg, hs_ep,
					    FUNC7(hs_ep), 0);
	}

	if (!FUNC8(hsotg))
		FUNC2(hs_ep);
}