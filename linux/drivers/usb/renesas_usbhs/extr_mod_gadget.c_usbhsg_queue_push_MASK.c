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
struct usbhsg_uep {int dummy; } ;
struct usb_request {int /*<<< orphan*/  length; int /*<<< orphan*/  zero; int /*<<< orphan*/  buf; int /*<<< orphan*/  status; scalar_t__ actual; } ;
struct usbhsg_request {struct usb_request req; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_pkt {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*,struct usbhs_pkt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_pipe*) ; 
 struct device* FUNC4 (struct usbhsg_gpriv*) ; 
 int /*<<< orphan*/  usbhsg_queue_done ; 
 struct usbhsg_gpriv* FUNC5 (struct usbhsg_uep*) ; 
 struct usbhs_pipe* FUNC6 (struct usbhsg_uep*) ; 
 struct usbhs_pkt* FUNC7 (struct usbhsg_request*) ; 

__attribute__((used)) static void FUNC8(struct usbhsg_uep *uep,
			      struct usbhsg_request *ureq)
{
	struct usbhsg_gpriv *gpriv = FUNC5(uep);
	struct device *dev = FUNC4(gpriv);
	struct usbhs_pipe *pipe = FUNC6(uep);
	struct usbhs_pkt *pkt = FUNC7(ureq);
	struct usb_request *req = &ureq->req;

	req->actual = 0;
	req->status = -EINPROGRESS;
	FUNC2(pipe, pkt, usbhsg_queue_done,
		       req->buf, req->length, req->zero, -1);
	FUNC3(pipe);

	FUNC0(dev, "pipe %d : queue push (%d)\n",
		FUNC1(pipe),
		req->length);
}