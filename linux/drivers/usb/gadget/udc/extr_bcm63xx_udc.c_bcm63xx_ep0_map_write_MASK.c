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
struct usb_request {scalar_t__ actual; } ;
struct iudma_ch {int /*<<< orphan*/  is_tx; } ;
struct bcm63xx_udc {int /*<<< orphan*/  gadget; struct usb_request* ep0_request; struct iudma_ch* iudma; } ;
struct bcm63xx_req {scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm63xx_udc*,struct iudma_ch*,struct bcm63xx_req*) ; 
 struct bcm63xx_req* FUNC2 (struct usb_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct usb_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bcm63xx_udc *udc, int ch_idx,
	struct usb_request *req)
{
	struct bcm63xx_req *breq = FUNC2(req);
	struct iudma_ch *iudma = &udc->iudma[ch_idx];

	FUNC0(udc->ep0_request);
	udc->ep0_request = req;

	req->actual = 0;
	breq->offset = 0;
	FUNC3(&udc->gadget, req, iudma->is_tx);
	FUNC1(udc, iudma, breq);
}