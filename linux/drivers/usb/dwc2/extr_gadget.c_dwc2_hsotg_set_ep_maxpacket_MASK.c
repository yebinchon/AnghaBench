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
typedef  unsigned int u32 ;
struct TYPE_2__ {unsigned int maxpacket; } ;
struct dwc2_hsotg_ep {int mc; TYPE_1__ ep; } ;
struct dwc2_hsotg {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int DXEPCTL_MPS_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_hsotg*,unsigned int,int /*<<< orphan*/ ) ; 
 struct dwc2_hsotg_ep* FUNC6 (struct dwc2_hsotg*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct dwc2_hsotg *hsotg,
					unsigned int ep, unsigned int mps,
					unsigned int mc, unsigned int dir_in)
{
	struct dwc2_hsotg_ep *hs_ep;
	u32 reg;

	hs_ep = FUNC6(hsotg, ep, dir_in);
	if (!hs_ep)
		return;

	if (ep == 0) {
		u32 mps_bytes = mps;

		/* EP0 is a special case */
		mps = FUNC3(mps_bytes);
		if (mps > 3)
			goto bad_mps;
		hs_ep->ep.maxpacket = mps_bytes;
		hs_ep->mc = 1;
	} else {
		if (mps > 1024)
			goto bad_mps;
		hs_ep->mc = mc;
		if (mc > 3)
			goto bad_mps;
		hs_ep->ep.maxpacket = mps;
	}

	if (dir_in) {
		reg = FUNC4(hsotg, FUNC0(ep));
		reg &= ~DXEPCTL_MPS_MASK;
		reg |= mps;
		FUNC5(hsotg, reg, FUNC0(ep));
	} else {
		reg = FUNC4(hsotg, FUNC1(ep));
		reg &= ~DXEPCTL_MPS_MASK;
		reg |= mps;
		FUNC5(hsotg, reg, FUNC1(ep));
	}

	return;

bad_mps:
	FUNC2(hsotg->dev, "ep%d: bad mps of %d\n", ep, mps);
}