#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct zd_usb {struct urb* urb_async_waiting; int /*<<< orphan*/  in_async; } ;
struct zd_ioreq16 {int /*<<< orphan*/  value; scalar_t__ addr; } ;
struct usb_req_write_regs {struct reg_data* reg_writes; void* id; } ;
struct TYPE_4__ {int /*<<< orphan*/  bInterval; } ;
struct usb_host_endpoint {TYPE_2__ desc; } ;
struct usb_device {int dummy; } ;
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct reg_data {void* value; void* addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EP_REGS_OUT ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_FREE_BUFFER ; 
 unsigned int USB_MAX_IOWRITE16_COUNT ; 
 int /*<<< orphan*/  USB_REQ_WRITE_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  iowrite16v_urb_complete ; 
 struct usb_req_write_regs* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reg_writes ; 
 int FUNC6 (struct usb_req_write_regs*,int /*<<< orphan*/ ,unsigned int) ; 
 struct urb* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,struct usb_req_write_regs*,int,int /*<<< orphan*/ ,struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,struct usb_req_write_regs*,int,int /*<<< orphan*/ ,struct zd_usb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*) ; 
 struct usb_host_endpoint* FUNC12 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct zd_usb*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct zd_usb*) ; 
 TYPE_1__* FUNC17 (struct zd_usb*) ; 
 struct usb_device* FUNC18 (struct zd_usb*) ; 

int FUNC19(struct zd_usb *usb, const struct zd_ioreq16 *ioreqs,
			    unsigned int count)
{
	int r;
	struct usb_device *udev;
	struct usb_req_write_regs *req = NULL;
	int i, req_len;
	struct urb *urb;
	struct usb_host_endpoint *ep;

	FUNC0(FUNC5(&FUNC17(usb)->mutex));
	FUNC0(usb->in_async);

	if (count == 0)
		return 0;
	if (count > USB_MAX_IOWRITE16_COUNT) {
		FUNC2(FUNC16(usb),
			"error: count %u exceeds possible max %u\n",
			count, USB_MAX_IOWRITE16_COUNT);
		return -EINVAL;
	}
	if (FUNC3()) {
		FUNC2(FUNC16(usb),
			"error: io in atomic context not supported\n");
		return -EWOULDBLOCK;
	}

	udev = FUNC18(usb);

	ep = FUNC12(udev, FUNC14(udev, EP_REGS_OUT));
	if (!ep)
		return -ENOENT;

	urb = FUNC7(0, GFP_KERNEL);
	if (!urb)
		return -ENOMEM;

	req_len = FUNC6(req, reg_writes, count);
	req = FUNC4(req_len, GFP_KERNEL);
	if (!req) {
		r = -ENOMEM;
		goto error;
	}

	req->id = FUNC1(USB_REQ_WRITE_REGS);
	for (i = 0; i < count; i++) {
		struct reg_data *rw  = &req->reg_writes[i];
		rw->addr = FUNC1((u16)ioreqs[i].addr);
		rw->value = FUNC1(ioreqs[i].value);
	}

	/* In USB 2.0 mode endpoint is interrupt type. However in USB 1.1 mode
	 * endpoint is bulk. Select correct type URB by endpoint descriptor.
	 */
	if (FUNC8(&ep->desc))
		FUNC10(urb, udev, FUNC14(udev, EP_REGS_OUT),
				 req, req_len, iowrite16v_urb_complete, usb,
				 ep->desc.bInterval);
	else
		FUNC9(urb, udev, FUNC13(udev, EP_REGS_OUT),
				  req, req_len, iowrite16v_urb_complete, usb);

	urb->transfer_flags |= URB_FREE_BUFFER;

	/* Submit previous URB */
	r = FUNC15(usb, false);
	if (r) {
		FUNC2(FUNC16(usb),
			"error in zd_submit_waiting_usb(). "
			"Error number %d\n", r);
		goto error;
	}

	/* Delay submit so that URB_NO_INTERRUPT flag can be set for all URBs
	 * of currect batch except for very last.
	 */
	usb->urb_async_waiting = urb;
	return 0;
error:
	FUNC11(urb);
	return r;
}