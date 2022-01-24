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
struct usb_interface {int dummy; } ;
struct TYPE_4__ {TYPE_1__* usb; } ;
struct cardstate {int connected; int /*<<< orphan*/  dev; TYPE_2__ hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  read_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_SUSPEND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct cardstate* FUNC2 (struct usb_interface*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf)
{
	struct cardstate *cs = FUNC2(intf);
	int rc;

	/* resubmit interrupt URB */
	cs->connected = 1;
	rc = FUNC3(cs->hw.usb->read_urb, GFP_KERNEL);
	if (rc) {
		FUNC0(cs->dev, "Could not submit read URB (error %d)\n", -rc);
		return rc;
	}

	FUNC1(DEBUG_SUSPEND, "resume complete");
	return 0;
}