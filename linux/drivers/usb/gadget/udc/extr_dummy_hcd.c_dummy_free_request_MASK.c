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
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct dummy_request {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dummy_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dummy_request* FUNC3 (struct usb_request*) ; 

__attribute__((used)) static void FUNC4(struct usb_ep *_ep, struct usb_request *_req)
{
	struct dummy_request	*req;

	if (!_ep || !_req) {
		FUNC0(1);
		return;
	}

	req = FUNC3(_req);
	FUNC0(!FUNC2(&req->queue));
	FUNC1(req);
}