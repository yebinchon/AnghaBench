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
struct dwc2_hsotg_ep {int /*<<< orphan*/  desc_list_dma; scalar_t__ dir_in; int /*<<< orphan*/  index; } ;
struct dwc2_hsotg {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int DXEPCTL_CNAK ; 
 int DXEPCTL_EPENA ; 
 int DXEPCTL_USBACTEP ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dwc2_hsotg_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dwc2_hsotg*,struct dwc2_hsotg_ep*) ; 
 int FUNC10 (struct dwc2_hsotg*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dwc2_hsotg*,int,int) ; 
 scalar_t__ FUNC12 (struct dwc2_hsotg*) ; 

__attribute__((used)) static void FUNC13(struct dwc2_hsotg *hsotg,
				   struct dwc2_hsotg_ep *hs_ep)
{
	u32 ctrl;
	u8 index = hs_ep->index;
	u32 epctl_reg = hs_ep->dir_in ? FUNC0(index) : FUNC2(index);
	u32 epsiz_reg = hs_ep->dir_in ? FUNC1(index) : FUNC3(index);

	if (hs_ep->dir_in)
		FUNC7(hsotg->dev, "Sending zero-length packet on ep%d\n",
			index);
	else
		FUNC7(hsotg->dev, "Receiving zero-length packet on ep%d\n",
			index);
	if (FUNC12(hsotg)) {
		/* Not specific buffer needed for ep0 ZLP */
		dma_addr_t dma = hs_ep->desc_list_dma;

		if (!index)
			FUNC9(hsotg, hs_ep);

		FUNC8(hs_ep, dma, 0);
	} else {
		FUNC11(hsotg, FUNC4(1) | FUNC5(1) |
			    FUNC6(0),
			    epsiz_reg);
	}

	ctrl = FUNC10(hsotg, epctl_reg);
	ctrl |= DXEPCTL_CNAK;  /* clear NAK set by core */
	ctrl |= DXEPCTL_EPENA; /* ensure ep enabled */
	ctrl |= DXEPCTL_USBACTEP;
	FUNC11(hsotg, ctrl, epctl_reg);
}