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
struct pch_udc_ep {int epsts; int /*<<< orphan*/  num; int /*<<< orphan*/  in; int /*<<< orphan*/  dev; } ;
struct pch_udc_dev {int /*<<< orphan*/  prot_stall; struct pch_udc_ep* ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int) ; 
 int UDC_EPSTS_BNA ; 
 int UDC_EPSTS_HE ; 
 int UDC_EPSTS_IN ; 
 int UDC_EPSTS_RCS ; 
 int UDC_EPSTS_RSS ; 
 int UDC_EPSTS_TDC ; 
 int UDC_EPSTS_TXEMPTY ; 
 int UDC_EPSTS_XFERDONE ; 
 int /*<<< orphan*/  FUNC2 (struct pch_udc_ep*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_udc_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_udc_ep*) ; 
 int /*<<< orphan*/  FUNC6 (struct pch_udc_ep*) ; 

__attribute__((used)) static void FUNC7(struct pch_udc_dev *dev, int ep_num)
{
	u32	epsts;
	struct pch_udc_ep	*ep;

	ep = &dev->ep[FUNC1(ep_num)];
	epsts = ep->epsts;
	ep->epsts = 0;

	if (!(epsts & (UDC_EPSTS_IN | UDC_EPSTS_BNA  | UDC_EPSTS_HE |
		       UDC_EPSTS_TDC | UDC_EPSTS_RCS | UDC_EPSTS_TXEMPTY |
		       UDC_EPSTS_RSS | UDC_EPSTS_XFERDONE)))
		return;
	if ((epsts & UDC_EPSTS_BNA))
		return;
	if (epsts & UDC_EPSTS_HE)
		return;
	if (epsts & UDC_EPSTS_RSS) {
		FUNC5(ep);
		FUNC3(ep->dev,
					     FUNC0(ep->in, ep->num));
	}
	if (epsts & UDC_EPSTS_RCS) {
		if (!dev->prot_stall) {
			FUNC4(ep);
		} else {
			FUNC5(ep);
			FUNC3(ep->dev,
						FUNC0(ep->in, ep->num));
		}
	}
	if (epsts & UDC_EPSTS_TDC)
		FUNC2(ep);
	/* On IN interrupt, provide data if we have any */
	if ((epsts & UDC_EPSTS_IN) && !(epsts & UDC_EPSTS_RSS) &&
	    !(epsts & UDC_EPSTS_TDC) && !(epsts & UDC_EPSTS_TXEMPTY))
		FUNC6(ep);
}