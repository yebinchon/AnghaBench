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
typedef  int u32 ;
struct pxa_udc {struct pxa_ep* pxa_ep; } ;
struct TYPE_2__ {int /*<<< orphan*/  irqs; } ;
struct pxa_ep {TYPE_1__ stats; } ;

/* Variables and functions */
 int FUNC0 (struct pxa_ep*) ; 
 int UDCCISR0_EP_MASK ; 
 int UDCCISR1_EP_MASK ; 
 int UDCICR_FIFOERR ; 
 int UDCICR_PKTCOMPL ; 
 int /*<<< orphan*/  UDCISR0 ; 
 int /*<<< orphan*/  UDCISR1 ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int UDCISR_INT_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_ep*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_udc*,int,int) ; 
 int FUNC5 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pxa_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(int irq, struct pxa_udc *udc)
{
	int i;
	struct pxa_ep *ep;
	u32 udcisr0 = FUNC5(udc, UDCISR0) & UDCCISR0_EP_MASK;
	u32 udcisr1 = FUNC5(udc, UDCISR1) & UDCCISR1_EP_MASK;

	if (udcisr0 & UDCISR_INT_MASK) {
		udc->pxa_ep[0].stats.irqs++;
		FUNC6(udc, UDCISR0, FUNC1(0, UDCISR_INT_MASK));
		FUNC4(udc, !!(udcisr0 & UDCICR_FIFOERR),
				!!(udcisr0 & UDCICR_PKTCOMPL));
	}

	udcisr0 >>= 2;
	for (i = 1; udcisr0 != 0 && i < 16; udcisr0 >>= 2, i++) {
		if (!(udcisr0 & UDCISR_INT_MASK))
			continue;

		FUNC6(udc, UDCISR0, FUNC1(i, UDCISR_INT_MASK));

		FUNC2(i >= FUNC0(udc->pxa_ep));
		if (i < FUNC0(udc->pxa_ep)) {
			ep = &udc->pxa_ep[i];
			ep->stats.irqs++;
			FUNC3(ep);
		}
	}

	for (i = 16; udcisr1 != 0 && i < 24; udcisr1 >>= 2, i++) {
		FUNC6(udc, UDCISR1, FUNC1(i - 16, UDCISR_INT_MASK));
		if (!(udcisr1 & UDCISR_INT_MASK))
			continue;

		FUNC2(i >= FUNC0(udc->pxa_ep));
		if (i < FUNC0(udc->pxa_ep)) {
			ep = &udc->pxa_ep[i];
			ep->stats.irqs++;
			FUNC3(ep);
		}
	}

}