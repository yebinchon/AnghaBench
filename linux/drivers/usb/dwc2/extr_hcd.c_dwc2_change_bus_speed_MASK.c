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
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int speed; } ;
struct dwc2_hsotg {int /*<<< orphan*/  wf_otg; int /*<<< orphan*/  wq_otg; TYPE_1__ params; } ;

/* Variables and functions */
 struct dwc2_hsotg* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct usb_hcd *hcd, int speed)
{
	struct dwc2_hsotg *hsotg = FUNC0(hcd);

	if (hsotg->params.speed == speed)
		return;

	hsotg->params.speed = speed;
	FUNC1(hsotg->wq_otg, &hsotg->wf_otg);
}