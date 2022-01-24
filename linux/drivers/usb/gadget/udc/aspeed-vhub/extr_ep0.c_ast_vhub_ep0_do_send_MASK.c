#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {scalar_t__ length; unsigned int actual; unsigned int buf; int /*<<< orphan*/  zero; } ;
struct ast_vhub_req {int last_desc; TYPE_3__ req; } ;
struct TYPE_5__ {int /*<<< orphan*/  ctlstat; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {unsigned int maxpacket; } ;
struct ast_vhub_ep {TYPE_2__ ep0; int /*<<< orphan*/  buf; TYPE_1__ ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_ep*,char*,unsigned int,int,...) ; 
 int VHUB_EP0_RX_BUFF_RDY ; 
 int FUNC1 (unsigned int) ; 
 int VHUB_EP0_TX_BUFF_RDY ; 
 int /*<<< orphan*/  FUNC2 (struct ast_vhub_ep*,struct ast_vhub_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ep0_state_status ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ast_vhub_ep *ep,
				 struct ast_vhub_req *req)
{
	unsigned int chunk;
	u32 reg;

	/* If this is a 0-length request, it's the gadget trying to
	 * send a status on our behalf. We take it from here.
	 */
	if (req->req.length == 0)
		req->last_desc = 1;

	/* Are we done ? Complete request, otherwise wait for next interrupt */
	if (req->last_desc >= 0) {
		FUNC0(ep, "complete send %d/%d\n",
		       req->req.actual, req->req.length);
		ep->ep0.state = ep0_state_status;
		FUNC5(VHUB_EP0_RX_BUFF_RDY, ep->ep0.ctlstat);
		FUNC2(ep, req, 0);
		return;
	}

	/*
	 * Next chunk cropped to max packet size. Also check if this
	 * is the last packet
	 */
	chunk = req->req.length - req->req.actual;
	if (chunk > ep->ep.maxpacket)
		chunk = ep->ep.maxpacket;
	else if ((chunk < ep->ep.maxpacket) || !req->req.zero)
		req->last_desc = 1;

	FUNC0(ep, "send chunk=%d last=%d, req->act=%d mp=%d\n",
	       chunk, req->last_desc, req->req.actual, ep->ep.maxpacket);

	/*
	 * Copy data if any (internal requests already have data
	 * in the EP buffer)
	 */
	if (chunk && req->req.buf)
		FUNC3(ep->buf, req->req.buf + req->req.actual, chunk);

	FUNC4(ep->buf);

	/* Remember chunk size and trigger send */
	reg = FUNC1(chunk);
	FUNC5(reg, ep->ep0.ctlstat);
	FUNC5(reg | VHUB_EP0_TX_BUFF_RDY, ep->ep0.ctlstat);
	req->req.actual += chunk;
}