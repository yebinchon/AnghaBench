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
struct usbhsg_uep {int /*<<< orphan*/  lock; } ;
struct usbhsg_request {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 struct usbhsg_uep* FUNC3 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhsg_uep*,struct usbhsg_request*,int /*<<< orphan*/ ) ; 
 struct usbhsg_request* FUNC5 (struct usb_request*) ; 
 struct usbhs_pipe* FUNC6 (struct usbhsg_uep*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhsg_request*) ; 

__attribute__((used)) static int FUNC8(struct usb_ep *ep, struct usb_request *req)
{
	struct usbhsg_uep *uep = FUNC3(ep);
	struct usbhsg_request *ureq = FUNC5(req);
	struct usbhs_pipe *pipe;
	unsigned long flags;

	FUNC0(&uep->lock, flags);
	pipe = FUNC6(uep);
	if (pipe)
		FUNC2(pipe, FUNC7(ureq));

	/*
	 * To dequeue a request, this driver should call the usbhsg_queue_pop()
	 * even if the pipe is NULL.
	 */
	FUNC4(uep, ureq, -ECONNRESET);
	FUNC1(&uep->lock, flags);

	return 0;
}