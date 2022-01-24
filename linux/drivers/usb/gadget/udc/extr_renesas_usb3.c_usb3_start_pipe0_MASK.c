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
struct TYPE_2__ {scalar_t__ length; } ;
struct renesas_usb3_request {TYPE_1__ req; } ;
struct renesas_usb3_ep {int started; scalar_t__ dir_in; } ;
struct renesas_usb3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P0_MOD_DIR ; 
 int /*<<< orphan*/  USB3_P0_MOD ; 
 int /*<<< orphan*/  FUNC0 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct renesas_usb3* FUNC1 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3_ep*,struct renesas_usb3_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*) ; 

__attribute__((used)) static void FUNC6(struct renesas_usb3_ep *usb3_ep,
			     struct renesas_usb3_request *usb3_req)
{
	struct renesas_usb3 *usb3 = FUNC1(usb3_ep);

	if (usb3_ep->started)
		return;

	usb3_ep->started = true;

	if (usb3_ep->dir_in) {
		FUNC3(usb3, P0_MOD_DIR, USB3_P0_MOD);
		FUNC4(usb3);
	} else {
		FUNC0(usb3, P0_MOD_DIR, USB3_P0_MOD);
		if (usb3_req->req.length)
			FUNC5(usb3);
	}

	FUNC2(usb3_ep, usb3_req);
}