#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_request {struct usb_request* context; int /*<<< orphan*/  buf; void* complete; } ;
struct usb_composite_dev {int dummy; } ;
struct f_loopback {int qlen; int /*<<< orphan*/  in_ep; TYPE_1__* out_ep; int /*<<< orphan*/  buflen; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct usb_request*) ; 
 struct usb_request* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* loopback_complete ; 
 struct usb_request* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct usb_request*) ; 
 int FUNC5 (TYPE_1__*,struct usb_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_composite_dev *cdev,
			  struct f_loopback *loop)
{
	struct usb_request *in_req, *out_req;
	int i;
	int result = 0;

	/*
	 * allocate a bunch of read buffers and queue them all at once.
	 * we buffer at most 'qlen' transfers; We allocate buffers only
	 * for out transfer and reuse them in IN transfers to implement
	 * our loopback functionality
	 */
	for (i = 0; i < loop->qlen && result == 0; i++) {
		result = -ENOMEM;

		in_req = FUNC3(loop->in_ep, GFP_ATOMIC);
		if (!in_req)
			goto fail;

		out_req = FUNC2(loop->out_ep, loop->buflen);
		if (!out_req)
			goto fail_in;

		in_req->complete = loopback_complete;
		out_req->complete = loopback_complete;

		in_req->buf = out_req->buf;
		/* length will be set in complete routine */
		in_req->context = out_req;
		out_req->context = in_req;

		result = FUNC5(loop->out_ep, out_req, GFP_ATOMIC);
		if (result) {
			FUNC0(cdev, "%s queue req --> %d\n",
					loop->out_ep->name, result);
			goto fail_out;
		}
	}

	return 0;

fail_out:
	FUNC1(loop->out_ep, out_req);
fail_in:
	FUNC4(loop->in_ep, in_req);
fail:
	return result;
}