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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct nbu2ss_udc {TYPE_2__* p_regs; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int length; int actual; scalar_t__ buf; } ;
struct nbu2ss_req {int zero; TYPE_1__ req; } ;
struct TYPE_4__ {int /*<<< orphan*/  EP0_CONTROL; int /*<<< orphan*/  EP0_LENGTH; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 int EP0_LDATA ; 
 int EP0_ONAK ; 
 int EP0_PACKETSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct nbu2ss_udc*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct nbu2ss_udc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nbu2ss_udc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct nbu2ss_udc *udc,
				    struct nbu2ss_req *req)
{
	u8		*p_buffer;
	u32		i_remain_size;
	u32		i_recv_length;
	int		result = 0;
	int		f_rcv_zero;

	/*-------------------------------------------------------------*/
	/* Receive data confirmation */
	i_recv_length = FUNC2(&udc->p_regs->EP0_LENGTH) & EP0_LDATA;
	if (i_recv_length != 0) {
		f_rcv_zero = 0;

		i_remain_size = req->req.length - req->req.actual;
		p_buffer = (u8 *)req->req.buf;
		p_buffer += req->req.actual;

		result = FUNC5(udc, p_buffer
					, FUNC6(i_remain_size, i_recv_length));
		if (result < 0)
			return result;

		req->req.actual += result;
		i_recv_length -= result;

		if ((i_recv_length > 0) && (i_recv_length < sizeof(u32))) {
			p_buffer += result;
			i_remain_size -= result;

			result = FUNC4(udc, p_buffer
					, FUNC6(i_remain_size, i_recv_length));
			req->req.actual += result;
		}
	} else {
		f_rcv_zero = 1;
	}

	/*-------------------------------------------------------------*/
	/* End confirmation */
	if (req->req.actual == req->req.length) {
		if ((req->req.actual % EP0_PACKETSIZE) == 0) {
			if (req->zero) {
				req->zero = false;
				FUNC0(udc, false);
				return 1;
			}
		}

		return 0;		/* Transfer End */
	}

	if ((req->req.actual % EP0_PACKETSIZE) != 0)
		return 0;		/* Short Packet Transfer End */

	if (req->req.actual > req->req.length) {
		FUNC3(udc->dev, " *** Overrun Error\n");
		return -EOVERFLOW;
	}

	if (f_rcv_zero != 0) {
		i_remain_size = FUNC2(&udc->p_regs->EP0_CONTROL);
		if (i_remain_size & EP0_ONAK) {
			/*---------------------------------------------------*/
			/* NACK release */
			FUNC1(&udc->p_regs->EP0_CONTROL, EP0_ONAK);
		}
		result = 1;
	}

	return result;
}