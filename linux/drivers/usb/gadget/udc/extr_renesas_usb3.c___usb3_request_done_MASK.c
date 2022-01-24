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
struct TYPE_2__ {int status; int /*<<< orphan*/  actual; int /*<<< orphan*/  length; } ;
struct renesas_usb3_request {TYPE_1__ req; int /*<<< orphan*/  queue; } ;
struct renesas_usb3_ep {int started; int /*<<< orphan*/  ep; int /*<<< orphan*/  num; } ;
struct renesas_usb3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct renesas_usb3* FUNC4 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct renesas_usb3_ep *usb3_ep,
				struct renesas_usb3_request *usb3_req,
				int status)
{
	struct renesas_usb3 *usb3 = FUNC4(usb3_ep);

	FUNC0(FUNC5(usb3), "giveback: ep%2d, %u, %u, %d\n",
		usb3_ep->num, usb3_req->req.length, usb3_req->req.actual,
		status);
	usb3_req->req.status = status;
	usb3_ep->started = false;
	FUNC1(&usb3_req->queue);
	FUNC3(&usb3->lock);
	FUNC6(&usb3_ep->ep, &usb3_req->req);
	FUNC2(&usb3->lock);
}