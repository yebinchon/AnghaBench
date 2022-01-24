#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {int started; int /*<<< orphan*/  num; scalar_t__ dir_in; scalar_t__ halt; } ;
struct renesas_usb3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int PN_INT_BFRDY ; 
 int PN_INT_LSTTR ; 
 int /*<<< orphan*/  USB3_PN_INT_ENA ; 
 int /*<<< orphan*/  USB3_PN_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (struct renesas_usb3_ep*,struct renesas_usb3_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 struct renesas_usb3* FUNC4 (struct renesas_usb3_ep*) ; 
 struct renesas_usb3_request* FUNC5 (struct renesas_usb3_ep*) ; 
 scalar_t__ FUNC6 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC8 (struct renesas_usb3*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct renesas_usb3_ep*,struct renesas_usb3_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct renesas_usb3_ep *usb3_ep,
			     struct renesas_usb3_request *usb3_req)
{
	struct renesas_usb3 *usb3 = FUNC4(usb3_ep);
	struct renesas_usb3_request *usb3_req_first = FUNC5(usb3_ep);
	unsigned long flags;
	int ret = -EAGAIN;
	u32 enable_bits = 0;

	FUNC0(&usb3->lock, flags);
	if (usb3_ep->halt || usb3_ep->started)
		goto out;
	if (usb3_req != usb3_req_first)
		goto out;

	if (FUNC6(usb3, usb3_ep->num) < 0)
		goto out;

	usb3_ep->started = true;

	if (FUNC2(usb3_ep, usb3_req))
		goto out;

	FUNC7(usb3);

	if (usb3_ep->dir_in) {
		ret = FUNC9(usb3_ep, usb3_req, USB3_PN_WRITE);
		enable_bits |= PN_INT_LSTTR;
	}

	if (ret < 0)
		enable_bits |= PN_INT_BFRDY;

	if (enable_bits) {
		FUNC8(usb3, enable_bits, USB3_PN_INT_ENA);
		FUNC3(usb3, usb3_ep->num);
	}
out:
	FUNC1(&usb3->lock, flags);
}