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
struct usb_gadget_driver {int dummy; } ;
struct usb_gadget {int /*<<< orphan*/  dev; int /*<<< orphan*/  ep0; } ;
struct gserial {int dummy; } ;
struct TYPE_4__ {struct usb_gadget* gadget; int /*<<< orphan*/  serial; TYPE_1__* req; } ;
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBGP_REQ_EP0_LEN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__ dbgp ; 
 int FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tty_line ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_gadget *gadget,
		struct usb_gadget_driver *driver)
{
	int err, stp;

	dbgp.gadget = gadget;

	dbgp.req = FUNC6(gadget->ep0, GFP_KERNEL);
	if (!dbgp.req) {
		err = -ENOMEM;
		stp = 1;
		goto fail;
	}

	dbgp.req->buf = FUNC4(DBGP_REQ_EP0_LEN, GFP_KERNEL);
	if (!dbgp.req->buf) {
		err = -ENOMEM;
		stp = 2;
		goto fail;
	}

	dbgp.req->length = DBGP_REQ_EP0_LEN;

#ifdef CONFIG_USB_G_DBGP_SERIAL
	dbgp.serial = kzalloc(sizeof(struct gserial), GFP_KERNEL);
	if (!dbgp.serial) {
		stp = 3;
		err = -ENOMEM;
		goto fail;
	}

	if (gserial_alloc_line(&tty_line)) {
		stp = 4;
		err = -ENODEV;
		goto fail;
	}
#endif

	err = FUNC0(gadget);
	if (err < 0) {
		stp = 5;
		goto fail;
	}

	FUNC2(&dbgp.gadget->dev, "bind: success\n");
	return 0;

fail:
	FUNC2(&gadget->dev, "bind: failure (%d:%d)\n", stp, err);
	FUNC1(gadget);
	return err;
}