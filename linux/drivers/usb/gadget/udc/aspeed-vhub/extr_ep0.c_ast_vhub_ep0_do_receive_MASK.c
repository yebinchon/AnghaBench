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
struct TYPE_4__ {unsigned int length; unsigned int actual; unsigned int buf; } ;
struct ast_vhub_req {TYPE_1__ req; } ;
struct TYPE_6__ {int /*<<< orphan*/  ctlstat; int /*<<< orphan*/  state; } ;
struct TYPE_5__ {unsigned int maxpacket; } ;
struct ast_vhub_ep {TYPE_3__ ep0; TYPE_2__ ep; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_ep*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_vhub_ep*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  VHUB_EP0_TX_BUFF_RDY ; 
 int /*<<< orphan*/  FUNC2 (struct ast_vhub_ep*,struct ast_vhub_req*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ast_vhub_ep*) ; 
 int /*<<< orphan*/  ep0_state_status ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ast_vhub_ep *ep, struct ast_vhub_req *req,
				    unsigned int len)
{
	unsigned int remain;
	int rc = 0;

	/* We are receiving... grab request */
	remain = req->req.length - req->req.actual;

	FUNC1(ep, "receive got=%d remain=%d\n", len, remain);

	/* Are we getting more than asked ? */
	if (len > remain) {
		FUNC0(ep, "receiving too much (ovf: %d) !\n",
		      len - remain);
		len = remain;
		rc = -EOVERFLOW;
	}
	if (len && req->req.buf)
		FUNC4(req->req.buf + req->req.actual, ep->buf, len);
	req->req.actual += len;

	/* Done ? */
	if (len < ep->ep.maxpacket || len == remain) {
		ep->ep0.state = ep0_state_status;
		FUNC5(VHUB_EP0_TX_BUFF_RDY, ep->ep0.ctlstat);
		FUNC2(ep, req, rc);
	} else
		FUNC3(ep);
}