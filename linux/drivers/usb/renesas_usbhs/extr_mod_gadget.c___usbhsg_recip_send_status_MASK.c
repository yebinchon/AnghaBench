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
struct usbhsg_uep {int /*<<< orphan*/  ep; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_pipe {int /*<<< orphan*/ * handler; } ;
struct usb_request {int length; scalar_t__ zero; int /*<<< orphan*/ * buf; int /*<<< orphan*/  complete; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  __usbhsg_recip_send_complete ; 
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct usb_request* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct usb_request*) ; 
 int /*<<< orphan*/  usbhs_fifo_pio_push_handler ; 
 struct usbhsg_uep* FUNC5 (struct usbhsg_gpriv*) ; 
 struct device* FUNC6 (struct usbhsg_gpriv*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhsg_uep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_request*) ; 
 struct usbhs_pipe* FUNC9 (struct usbhsg_uep*) ; 

__attribute__((used)) static void FUNC10(struct usbhsg_gpriv *gpriv,
				       unsigned short status)
{
	struct usbhsg_uep *dcp = FUNC5(gpriv);
	struct usbhs_pipe *pipe = FUNC9(dcp);
	struct device *dev = FUNC6(gpriv);
	struct usb_request *req;
	__le16 *buf;

	/* alloc new usb_request for recip */
	req = FUNC3(&dcp->ep, GFP_ATOMIC);
	if (!req) {
		FUNC1(dev, "recip request allocation fail\n");
		return;
	}

	/* alloc recip data buffer */
	buf = FUNC2(sizeof(*buf), GFP_ATOMIC);
	if (!buf) {
		FUNC4(&dcp->ep, req);
		return;
	}

	/* recip data is status */
	*buf = FUNC0(status);

	/* allocated usb_request/buffer will be freed */
	req->complete	= __usbhsg_recip_send_complete;
	req->buf	= buf;
	req->length	= sizeof(*buf);
	req->zero	= 0;

	/* push packet */
	pipe->handler = &usbhs_fifo_pio_push_handler;
	FUNC7(dcp, FUNC8(req));
}