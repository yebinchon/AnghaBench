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
struct dwc2_tt {int refcount; TYPE_1__* usb_tt; } ;
struct dwc2_hsotg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * hcpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_tt*) ; 

void FUNC2(struct dwc2_hsotg *hsotg, struct dwc2_tt *dwc_tt)
{
	/* Model kfree and make put of NULL a no-op */
	if (!dwc_tt)
		return;

	FUNC0(dwc_tt->refcount < 1);

	dwc_tt->refcount--;
	if (!dwc_tt->refcount) {
		dwc_tt->usb_tt->hcpriv = NULL;
		FUNC1(dwc_tt);
	}
}