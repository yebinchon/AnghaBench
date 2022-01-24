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
struct usb_host_interface {int dummy; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; } ;
struct us_data {scalar_t__ protocol; int /*<<< orphan*/  ep_bInterval; int /*<<< orphan*/  pusb_dev; int /*<<< orphan*/  recv_intr_pipe; int /*<<< orphan*/  recv_bulk_pipe; int /*<<< orphan*/  send_bulk_pipe; int /*<<< orphan*/  recv_ctrl_pipe; int /*<<< orphan*/  send_ctrl_pipe; TYPE_1__* pusb_intf; } ;
struct TYPE_2__ {struct usb_host_interface* cur_altsetting; } ;

/* Variables and functions */
 scalar_t__ USB_PR_CBI ; 
 int /*<<< orphan*/  FUNC0 (struct usb_endpoint_descriptor*) ; 
 int FUNC1 (struct usb_host_interface*,struct usb_endpoint_descriptor**,struct usb_endpoint_descriptor**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usb_host_interface*,struct usb_endpoint_descriptor**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct us_data*,char*) ; 

__attribute__((used)) static int FUNC9(struct us_data *us)
{
	struct usb_host_interface *alt = us->pusb_intf->cur_altsetting;
	struct usb_endpoint_descriptor *ep_in;
	struct usb_endpoint_descriptor *ep_out;
	struct usb_endpoint_descriptor *ep_int;
	int res;

	/*
	 * Find the first endpoint of each type we need.
	 * We are expecting a minimum of 2 endpoints - in and out (bulk).
	 * An optional interrupt-in is OK (necessary for CBI protocol).
	 * We will ignore any others.
	 */
	res = FUNC1(alt, &ep_in, &ep_out, NULL, NULL);
	if (res) {
		FUNC8(us, "bulk endpoints not found\n");
		return res;
	}

	res = FUNC2(alt, &ep_int);
	if (res && us->protocol == USB_PR_CBI) {
		FUNC8(us, "interrupt endpoint not found\n");
		return res;
	}

	/* Calculate and store the pipe values */
	us->send_ctrl_pipe = FUNC7(us->pusb_dev, 0);
	us->recv_ctrl_pipe = FUNC4(us->pusb_dev, 0);
	us->send_bulk_pipe = FUNC6(us->pusb_dev,
		FUNC0(ep_out));
	us->recv_bulk_pipe = FUNC3(us->pusb_dev,
		FUNC0(ep_in));
	if (ep_int) {
		us->recv_intr_pipe = FUNC5(us->pusb_dev,
			FUNC0(ep_int));
		us->ep_bInterval = ep_int->bInterval;
	}
	return 0;
}