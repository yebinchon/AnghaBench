#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * host; } ;
struct ci_hdrc {TYPE_2__* platdata; TYPE_1__ otg; struct usb_hcd* hcd; int /*<<< orphan*/  irq; int /*<<< orphan*/  role; } ;
struct TYPE_4__ {int flags; scalar_t__ pins_default; int /*<<< orphan*/  pctl; scalar_t__ pins_host; scalar_t__ reg_vbus; int /*<<< orphan*/  (* notify_event ) (struct ci_hdrc*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CI_HDRC_CONTROLLER_STOPPED_EVENT ; 
 int CI_HDRC_TURN_VBUS_EARLY_ON ; 
 int /*<<< orphan*/  CI_ROLE_END ; 
 int /*<<< orphan*/  FUNC0 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ci_hdrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 

__attribute__((used)) static void FUNC7(struct ci_hdrc *ci)
{
	struct usb_hcd *hcd = ci->hcd;

	if (hcd) {
		if (ci->platdata->notify_event)
			ci->platdata->notify_event(ci,
				CI_HDRC_CONTROLLER_STOPPED_EVENT);
		FUNC6(hcd);
		ci->role = CI_ROLE_END;
		FUNC4(ci->irq);
		FUNC5(hcd);
		if (ci->platdata->reg_vbus && !FUNC0(ci) &&
			(ci->platdata->flags & CI_HDRC_TURN_VBUS_EARLY_ON))
				FUNC2(ci->platdata->reg_vbus);
	}
	ci->hcd = NULL;
	ci->otg.host = NULL;

	if (ci->platdata->pins_host && ci->platdata->pins_default)
		FUNC1(ci->platdata->pctl,
				     ci->platdata->pins_default);
}