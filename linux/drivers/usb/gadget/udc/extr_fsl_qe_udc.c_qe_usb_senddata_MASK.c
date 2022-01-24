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
typedef  int /*<<< orphan*/  u8 ;
struct qe_frame {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  maxpacket; } ;
struct qe_ep {int sent; unsigned int last; TYPE_3__* tx_req; TYPE_1__ ep; } ;
struct TYPE_5__ {int length; unsigned int actual; scalar_t__ buf; } ;
struct TYPE_6__ {TYPE_2__ req; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FRAME_OK ; 
 int /*<<< orphan*/  FUNC0 (struct qe_frame*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qe_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qe_frame*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct qe_frame*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qe_ep*,struct qe_frame*) ; 
 int /*<<< orphan*/  FUNC6 (struct qe_frame*) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC7(struct qe_ep *ep, struct qe_frame *frame)
{
	unsigned int size;
	u8 *buf;

	FUNC6(frame);
	size = FUNC4(u32, (ep->tx_req->req.length - ep->sent),
				ep->ep.maxpacket);
	buf = (u8 *)ep->tx_req->req.buf + ep->sent;
	if (buf && size) {
		ep->last = size;
		ep->tx_req->req.actual += size;
		FUNC0(frame, buf);
		FUNC2(frame, size);
		FUNC3(frame, FRAME_OK);
		FUNC1(frame, 0);
		return FUNC5(ep, frame);
	}
	return -EIO;
}