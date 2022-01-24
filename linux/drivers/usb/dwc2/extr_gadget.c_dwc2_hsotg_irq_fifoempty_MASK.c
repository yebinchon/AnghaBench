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
struct dwc2_hsotg_ep {scalar_t__ periodic; int /*<<< orphan*/  dir_in; } ;
struct dwc2_hsotg {int num_of_eps; } ;

/* Variables and functions */
 int FUNC0 (struct dwc2_hsotg*,struct dwc2_hsotg_ep*) ; 
 struct dwc2_hsotg_ep* FUNC1 (struct dwc2_hsotg*,int,int) ; 

__attribute__((used)) static void FUNC2(struct dwc2_hsotg *hsotg, bool periodic)
{
	struct dwc2_hsotg_ep *ep;
	int epno, ret;

	/* look through for any more data to transmit */
	for (epno = 0; epno < hsotg->num_of_eps; epno++) {
		ep = FUNC1(hsotg, epno, 1);

		if (!ep)
			continue;

		if (!ep->dir_in)
			continue;

		if ((periodic && !ep->periodic) ||
		    (!periodic && ep->periodic))
			continue;

		ret = FUNC0(hsotg, ep);
		if (ret < 0)
			break;
	}
}