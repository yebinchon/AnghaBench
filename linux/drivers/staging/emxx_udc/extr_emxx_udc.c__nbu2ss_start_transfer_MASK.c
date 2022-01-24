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
struct nbu2ss_udc {int ep0state; } ;
struct TYPE_4__ {int length; int zero; } ;
struct nbu2ss_req {int dma_flag; int zero; TYPE_2__ req; scalar_t__ div_len; } ;
struct TYPE_3__ {int maxpacket; } ;
struct nbu2ss_ep {scalar_t__ epnum; scalar_t__ direct; TYPE_1__ ep; } ;

/* Variables and functions */
 int EINVAL ; 
#define  EP0_IN_DATA_PHASE 130 
#define  EP0_IN_STATUS_PHASE 129 
#define  EP0_OUT_DATA_PHASE 128 
 int FUNC0 (struct nbu2ss_udc*,int) ; 
 scalar_t__ USB_DIR_OUT ; 
 int FUNC1 (struct nbu2ss_udc*,struct nbu2ss_req*) ; 
 int FUNC2 (struct nbu2ss_udc*,struct nbu2ss_req*) ; 
 int FUNC3 (struct nbu2ss_udc*,struct nbu2ss_ep*,struct nbu2ss_req*) ; 
 int FUNC4 (struct nbu2ss_udc*,struct nbu2ss_ep*,struct nbu2ss_req*) ; 

__attribute__((used)) static int FUNC5(struct nbu2ss_udc *udc,
				  struct nbu2ss_ep *ep,
				  struct nbu2ss_req *req,
				  bool	bflag)
{
	int		nret = -EINVAL;

	req->dma_flag = false;
	req->div_len = 0;

	if (req->req.length == 0) {
		req->zero = false;
	} else {
		if ((req->req.length % ep->ep.maxpacket) == 0)
			req->zero = req->req.zero;
		else
			req->zero = false;
	}

	if (ep->epnum == 0) {
		/* EP0 */
		switch (udc->ep0state) {
		case EP0_IN_DATA_PHASE:
			nret = FUNC1(udc, req);
			break;

		case EP0_OUT_DATA_PHASE:
			nret = FUNC2(udc, req);
			break;

		case EP0_IN_STATUS_PHASE:
			nret = FUNC0(udc, true);
			break;

		default:
			break;
		}

	} else {
		/* EPN */
		if (ep->direct == USB_DIR_OUT) {
			/* OUT */
			if (!bflag)
				nret = FUNC4(udc, ep, req);
		} else {
			/* IN */
			nret = FUNC3(udc, ep, req);
		}
	}

	return nret;
}