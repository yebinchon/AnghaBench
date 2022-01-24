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
typedef  int u32 ;
struct usb_request {scalar_t__ length; scalar_t__ actual; int /*<<< orphan*/  status; int /*<<< orphan*/  buf; int /*<<< orphan*/  complete; } ;
struct usb_ep {int dummy; } ;
struct s3c_hsudc_req {int /*<<< orphan*/  queue; } ;
struct s3c_hsudc_ep {int /*<<< orphan*/  queue; int /*<<< orphan*/  stopped; int /*<<< orphan*/  bEndpointAddress; struct s3c_hsudc* dev; } ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct s3c_hsudc {int regs; int /*<<< orphan*/  lock; int /*<<< orphan*/  ep0state; TYPE_1__ gadget; int /*<<< orphan*/  driver; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int EINVAL ; 
 int ESHUTDOWN ; 
 int S3C_EP0SR ; 
 int S3C_ESR ; 
 int S3C_ESR_RX_SUCCESS ; 
 int S3C_ESR_TX_SUCCESS ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  WAIT_FOR_SETUP ; 
 scalar_t__ FUNC0 (struct s3c_hsudc_ep*) ; 
 scalar_t__ FUNC1 (struct s3c_hsudc_ep*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct s3c_hsudc_ep* FUNC4 (struct usb_ep*) ; 
 struct s3c_hsudc_req* FUNC5 (struct usb_request*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct s3c_hsudc_ep*,struct s3c_hsudc_req*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct s3c_hsudc_ep*,struct s3c_hsudc_req*) ; 
 int FUNC9 (struct s3c_hsudc_ep*,struct s3c_hsudc_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct s3c_hsudc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct usb_ep *_ep, struct usb_request *_req,
			gfp_t gfp_flags)
{
	struct s3c_hsudc_req *hsreq;
	struct s3c_hsudc_ep *hsep;
	struct s3c_hsudc *hsudc;
	unsigned long flags;
	u32 offset;
	u32 csr;

	hsreq = FUNC5(_req);
	if ((!_req || !_req->complete || !_req->buf ||
		!FUNC3(&hsreq->queue)))
		return -EINVAL;

	hsep = FUNC4(_ep);
	hsudc = hsep->dev;
	if (!hsudc->driver || hsudc->gadget.speed == USB_SPEED_UNKNOWN)
		return -ESHUTDOWN;

	FUNC11(&hsudc->lock, flags);
	FUNC10(hsudc, hsep->bEndpointAddress);

	_req->status = -EINPROGRESS;
	_req->actual = 0;

	if (!FUNC0(hsep) && _req->length == 0) {
		hsudc->ep0state = WAIT_FOR_SETUP;
		FUNC7(hsep, hsreq, 0);
		FUNC12(&hsudc->lock, flags);
		return 0;
	}

	if (FUNC3(&hsep->queue) && !hsep->stopped) {
		offset = (FUNC0(hsep)) ? S3C_ESR : S3C_EP0SR;
		if (FUNC1(hsep)) {
			csr = FUNC6(hsudc->regs + offset);
			if (!(csr & S3C_ESR_TX_SUCCESS) &&
				(FUNC9(hsep, hsreq) == 1))
				hsreq = NULL;
		} else {
			csr = FUNC6(hsudc->regs + offset);
			if ((csr & S3C_ESR_RX_SUCCESS)
				   && (FUNC8(hsep, hsreq) == 1))
				hsreq = NULL;
		}
	}

	if (hsreq)
		FUNC2(&hsreq->queue, &hsep->queue);

	FUNC12(&hsudc->lock, flags);
	return 0;
}