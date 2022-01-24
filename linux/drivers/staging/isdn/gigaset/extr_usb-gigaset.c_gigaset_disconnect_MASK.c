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
struct usb_cardstate {int /*<<< orphan*/ * udev; int /*<<< orphan*/ * interface; int /*<<< orphan*/ * bulk_out_buffer; int /*<<< orphan*/ * rcvbuf; int /*<<< orphan*/ * bulk_out_urb; int /*<<< orphan*/ * read_urb; } ;
struct TYPE_2__ {struct usb_cardstate* usb; } ;
struct cardstate {int /*<<< orphan*/ * dev; int /*<<< orphan*/  write_tasklet; TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC2 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct cardstate* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct usb_interface *interface)
{
	struct cardstate *cs;
	struct usb_cardstate *ucs;

	cs = FUNC6(interface);
	ucs = cs->hw.usb;

	FUNC0(cs->dev, "disconnecting Gigaset USB adapter\n");

	FUNC7(ucs->read_urb);

	FUNC2(cs);

	FUNC9(interface, NULL);
	FUNC4(&cs->write_tasklet);

	FUNC7(ucs->bulk_out_urb);

	FUNC3(ucs->bulk_out_buffer);
	FUNC5(ucs->bulk_out_urb);
	FUNC3(ucs->rcvbuf);
	FUNC5(ucs->read_urb);
	ucs->read_urb = ucs->bulk_out_urb = NULL;
	ucs->rcvbuf = ucs->bulk_out_buffer = NULL;

	FUNC8(ucs->udev);
	ucs->interface = NULL;
	ucs->udev = NULL;
	cs->dev = NULL;
	FUNC1(cs);
}