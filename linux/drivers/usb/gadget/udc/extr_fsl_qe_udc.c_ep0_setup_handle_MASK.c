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
typedef  int /*<<< orphan*/  u8 ;
struct qe_udc {scalar_t__ ep0_state; int /*<<< orphan*/  local_setup_buff; struct qe_ep* eps; } ;
struct qe_frame {int /*<<< orphan*/  data; } ;
struct qe_ep {int data01; struct qe_frame* rxframe; } ;

/* Variables and functions */
 int EINVAL ; 
 int PID_SETUP ; 
 scalar_t__ WAIT_FOR_SETUP ; 
 int FUNC0 (struct qe_frame*) ; 
 unsigned int FUNC1 (struct qe_frame*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct qe_udc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct qe_udc *udc)
{
	struct qe_ep *ep = &udc->eps[0];
	struct qe_frame *pframe;
	unsigned int fsize;
	u8 *cp;

	pframe = ep->rxframe;
	if ((FUNC0(pframe) & PID_SETUP)
			&& (udc->ep0_state == WAIT_FOR_SETUP)) {
		fsize = FUNC1(pframe);
		if (FUNC4(fsize != 8))
			return -EINVAL;
		cp = (u8 *)&udc->local_setup_buff;
		FUNC2(cp, pframe->data, fsize);
		ep->data01 = 1;

		/* handle the usb command base on the usb_ctrlrequest */
		FUNC3(udc, &udc->local_setup_buff);
		return 0;
	}
	return -EINVAL;
}