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
struct qe_udc {TYPE_2__** ep_param; TYPE_1__* usb_regs; } ;
struct qe_ep {int epnum; int /*<<< orphan*/  txbase; int /*<<< orphan*/  n_txbd; int /*<<< orphan*/  c_txbd; struct qe_udc* udc; } ;
struct TYPE_4__ {int /*<<< orphan*/  tbcnt; int /*<<< orphan*/  tstate; int /*<<< orphan*/  tbase; int /*<<< orphan*/  tbptr; } ;
struct TYPE_3__ {int /*<<< orphan*/  usb_uscom; } ;

/* Variables and functions */
 int USB_CMD_EP_MASK ; 
 int USB_CMD_FLUSH_FIFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qe_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct qe_ep*) ; 

__attribute__((used)) static int FUNC6(struct qe_ep *ep)
{
	struct qe_udc *udc = ep->udc;
	int i;

	i = (int)ep->epnum;

	FUNC5(ep);
	FUNC1(&udc->usb_regs->usb_uscom,
		USB_CMD_FLUSH_FIFO | (USB_CMD_EP_MASK & (ep->epnum)));
	FUNC2(&udc->ep_param[i]->tbptr, FUNC0(&udc->ep_param[i]->tbase));
	FUNC3(&udc->ep_param[i]->tstate, 0);
	FUNC2(&udc->ep_param[i]->tbcnt, 0);

	ep->c_txbd = ep->txbase;
	ep->n_txbd = ep->txbase;
	FUNC4(ep);
	return 0;
}