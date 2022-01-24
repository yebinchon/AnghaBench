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
struct TYPE_3__ {struct bas_cardstate* bas; } ;
struct cardstate {int /*<<< orphan*/  dev; int /*<<< orphan*/  inbuf; TYPE_1__ hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  wLength; scalar_t__ wIndex; scalar_t__ wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bRequestType; } ;
struct bas_cardstate {int rcvbuf_size; int /*<<< orphan*/  timer_cmd_in; int /*<<< orphan*/  urb_cmd_in; int /*<<< orphan*/  rcvbuf; TYPE_2__ dr_cmd_in; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int BS_ATRDPEND ; 
 int BS_SUSPEND ; 
 int /*<<< orphan*/  DEBUG_USBREQ ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HD_READ_ATMESSAGE ; 
 int HZ ; 
 int /*<<< orphan*/  IN_VENDOR_REQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  read_ctrl_callback ; 
 int FUNC6 (struct bas_cardstate*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct cardstate *cs, int timeout)
{
	struct bas_cardstate *ucs = cs->hw.bas;
	int basstate;
	int ret;

	FUNC4(DEBUG_USBREQ, "-------> HD_READ_ATMESSAGE (%d)",
		ucs->rcvbuf_size);

	basstate = FUNC6(ucs, BS_ATRDPEND, 0);
	if (basstate & BS_ATRDPEND) {
		FUNC1(cs->dev,
			"could not submit HD_READ_ATMESSAGE: URB busy\n");
		return -EBUSY;
	}

	if (basstate & BS_SUSPEND) {
		FUNC2(cs->dev,
			   "HD_READ_ATMESSAGE not submitted, "
			   "suspend in progress\n");
		FUNC6(ucs, 0, BS_ATRDPEND);
		/* treat like disconnect */
		return -ENODEV;
	}

	ucs->dr_cmd_in.bRequestType = IN_VENDOR_REQ;
	ucs->dr_cmd_in.bRequest = HD_READ_ATMESSAGE;
	ucs->dr_cmd_in.wValue = 0;
	ucs->dr_cmd_in.wIndex = 0;
	ucs->dr_cmd_in.wLength = FUNC0(ucs->rcvbuf_size);
	FUNC7(ucs->urb_cmd_in, ucs->udev,
			     FUNC8(ucs->udev, 0),
			     (unsigned char *) &ucs->dr_cmd_in,
			     ucs->rcvbuf, ucs->rcvbuf_size,
			     read_ctrl_callback, cs->inbuf);

	ret = FUNC9(ucs->urb_cmd_in, GFP_ATOMIC);
	if (ret != 0) {
		FUNC6(ucs, 0, BS_ATRDPEND);
		FUNC1(cs->dev, "could not submit HD_READ_ATMESSAGE: %s\n",
			FUNC3(ret));
		return ret;
	}

	if (timeout > 0) {
		FUNC4(DEBUG_USBREQ, "setting timeout of %d/10 secs", timeout);
		FUNC5(&ucs->timer_cmd_in, jiffies + timeout * HZ / 10);
	}
	return 0;
}