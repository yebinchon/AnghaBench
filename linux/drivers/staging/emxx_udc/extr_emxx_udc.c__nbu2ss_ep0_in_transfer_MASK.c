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
struct nbu2ss_udc {TYPE_1__* p_regs; } ;
struct TYPE_4__ {int actual; int length; scalar_t__ buf; } ;
struct nbu2ss_req {int zero; int div_len; TYPE_2__ req; } ;
struct TYPE_3__ {int /*<<< orphan*/  EP0_CONTROL; } ;

/* Variables and functions */
 scalar_t__ EP0_INAK ; 
 int EP0_INAK_EN ; 
 int EP0_PACKETSIZE ; 
 int FUNC0 (struct nbu2ss_udc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nbu2ss_udc*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (struct nbu2ss_udc*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct nbu2ss_udc *udc,
				   struct nbu2ss_req *req)
{
	u8		*p_buffer;			/* IN Data Buffer */
	u32		data;
	u32		i_remain_size = 0;
	int		result = 0;

	/*-------------------------------------------------------------*/
	/* End confirmation */
	if (req->req.actual == req->req.length) {
		if ((req->req.actual % EP0_PACKETSIZE) == 0) {
			if (req->zero) {
				req->zero = false;
				FUNC1(udc, false);
				return 1;
			}
		}

		return 0;		/* Transfer End */
	}

	/*-------------------------------------------------------------*/
	/* NAK release */
	data = FUNC2(&udc->p_regs->EP0_CONTROL);
	data |= EP0_INAK_EN;
	data &= ~(u32)EP0_INAK;
	FUNC3(&udc->p_regs->EP0_CONTROL, data);

	i_remain_size = req->req.length - req->req.actual;
	p_buffer = (u8 *)req->req.buf;
	p_buffer += req->req.actual;

	/*-------------------------------------------------------------*/
	/* Data transfer */
	result = FUNC0(udc, p_buffer, i_remain_size);

	req->div_len = result;
	i_remain_size -= result;

	if (i_remain_size == 0) {
		FUNC1(udc, false);
		return result;
	}

	if ((i_remain_size < sizeof(u32)) && (result != EP0_PACKETSIZE)) {
		p_buffer += result;
		result += FUNC4(udc, p_buffer, i_remain_size);
		req->div_len = result;
	}

	return result;
}