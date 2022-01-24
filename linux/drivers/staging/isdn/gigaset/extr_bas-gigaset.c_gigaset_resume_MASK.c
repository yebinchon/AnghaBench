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
struct usb_interface {int dummy; } ;
struct TYPE_2__ {struct bas_cardstate* bas; } ;
struct cardstate {int /*<<< orphan*/  dev; TYPE_1__ hw; } ;
struct bas_cardstate {scalar_t__ retry_int_in; int /*<<< orphan*/  urb_int_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  BS_SUSPEND ; 
 int /*<<< orphan*/  DEBUG_SUSPEND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bas_cardstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cardstate* FUNC4 (struct usb_interface*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf)
{
	struct cardstate *cs = FUNC4(intf);
	struct bas_cardstate *ucs = cs->hw.bas;
	int rc;

	/* resubmit interrupt URB for spontaneous messages from base */
	rc = FUNC5(ucs->urb_int_in, GFP_KERNEL);
	if (rc) {
		FUNC0(cs->dev, "could not resubmit interrupt URB: %s\n",
			FUNC1(rc));
		return rc;
	}
	ucs->retry_int_in = 0;

	/* clear suspend flag to reallow activity */
	FUNC3(ucs, 0, BS_SUSPEND);

	FUNC2(DEBUG_SUSPEND, "resume complete");
	return 0;
}