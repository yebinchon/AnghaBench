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
struct usb_request {int /*<<< orphan*/  context; scalar_t__ actual; scalar_t__ status; } ;
struct usb_ep {struct ffs_ep* driver_data; } ;
struct ffs_ep {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usb_ep *_ep, struct usb_request *req)
{
	FUNC0();
	if (FUNC2(req->context)) {
		struct ffs_ep *ep = _ep->driver_data;
		ep->status = req->status ? req->status : req->actual;
		FUNC1(req->context);
	}
}