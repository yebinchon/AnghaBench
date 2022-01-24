#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {scalar_t__ expires; } ;
struct xhci_virt_ep {int ep_state; TYPE_5__ stop_cmd_timer; int /*<<< orphan*/  cancelled_td_list; } ;
struct xhci_virt_device {struct xhci_virt_ep* eps; } ;
struct xhci_td {int /*<<< orphan*/  cancelled_td_list; int /*<<< orphan*/  first_trb; int /*<<< orphan*/  start_seg; int /*<<< orphan*/  td_list; } ;
struct xhci_ring {int dummy; } ;
struct xhci_hcd {int xhc_state; int /*<<< orphan*/  lock; TYPE_1__* op_regs; struct xhci_virt_device** devs; } ;
struct xhci_command {int dummy; } ;
struct usb_hcd {int dummy; } ;
struct urb_priv {int num_tds_done; int num_tds; struct xhci_td* td; } ;
struct urb {TYPE_3__* dev; TYPE_2__* ep; struct urb_priv* hcpriv; } ;
struct TYPE_9__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_8__ {size_t slot_id; int /*<<< orphan*/  devpath; } ;
struct TYPE_7__ {TYPE_4__ desc; } ;
struct TYPE_6__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EP_STOP_CMD_PENDING ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int XHCI_STATE_DYING ; 
 int XHCI_STATE_HALTED ; 
 int XHCI_STOP_EP_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 struct xhci_hcd* FUNC1 (struct usb_hcd*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_td*,struct xhci_ring*) ; 
 int /*<<< orphan*/  trace_xhci_dbg_cancel_urb ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 
 int FUNC10 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_hcd*,struct urb*) ; 
 struct xhci_command* FUNC13 (struct xhci_hcd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct xhci_hcd*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct xhci_hcd*,char*) ; 
 unsigned int FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC18 (struct xhci_hcd*,struct xhci_command*,size_t,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct xhci_hcd*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct urb_priv*) ; 
 struct xhci_ring* FUNC22 (struct xhci_hcd*,struct urb*) ; 

__attribute__((used)) static int FUNC23(struct usb_hcd *hcd, struct urb *urb, int status)
{
	unsigned long flags;
	int ret, i;
	u32 temp;
	struct xhci_hcd *xhci;
	struct urb_priv	*urb_priv;
	struct xhci_td *td;
	unsigned int ep_index;
	struct xhci_ring *ep_ring;
	struct xhci_virt_ep *ep;
	struct xhci_command *command;
	struct xhci_virt_device *vdev;

	xhci = FUNC1(hcd);
	FUNC6(&xhci->lock, flags);

	FUNC9(urb);

	/* Make sure the URB hasn't completed or been unlinked already */
	ret = FUNC10(hcd, urb, status);
	if (ret)
		goto done;

	/* give back URB now if we can't queue it for cancel */
	vdev = xhci->devs[urb->dev->slot_id];
	urb_priv = urb->hcpriv;
	if (!vdev || !urb_priv)
		goto err_giveback;

	ep_index = FUNC16(&urb->ep->desc);
	ep = &vdev->eps[ep_index];
	ep_ring = FUNC22(xhci, urb);
	if (!ep || !ep_ring)
		goto err_giveback;

	/* If xHC is dead take it down and return ALL URBs in xhci_hc_died() */
	temp = FUNC5(&xhci->op_regs->status);
	if (temp == ~(u32)0 || xhci->xhc_state & XHCI_STATE_DYING) {
		FUNC17(xhci);
		goto done;
	}

	/*
	 * check ring is not re-allocated since URB was enqueued. If it is, then
	 * make sure none of the ring related pointers in this URB private data
	 * are touched, such as td_list, otherwise we overwrite freed data
	 */
	if (!FUNC8(&urb_priv->td[0], ep_ring)) {
		FUNC15(xhci, "Canceled URB td not found on endpoint ring");
		for (i = urb_priv->num_tds_done; i < urb_priv->num_tds; i++) {
			td = &urb_priv->td[i];
			if (!FUNC4(&td->cancelled_td_list))
				FUNC3(&td->cancelled_td_list);
		}
		goto err_giveback;
	}

	if (xhci->xhc_state & XHCI_STATE_HALTED) {
		FUNC14(xhci, trace_xhci_dbg_cancel_urb,
				"HC halted, freeing TD manually.");
		for (i = urb_priv->num_tds_done;
		     i < urb_priv->num_tds;
		     i++) {
			td = &urb_priv->td[i];
			if (!FUNC4(&td->td_list))
				FUNC3(&td->td_list);
			if (!FUNC4(&td->cancelled_td_list))
				FUNC3(&td->cancelled_td_list);
		}
		goto err_giveback;
	}

	i = urb_priv->num_tds_done;
	if (i < urb_priv->num_tds)
		FUNC14(xhci, trace_xhci_dbg_cancel_urb,
				"Cancel URB %p, dev %s, ep 0x%x, "
				"starting at offset 0x%llx",
				urb, urb->dev->devpath,
				urb->ep->desc.bEndpointAddress,
				(unsigned long long) FUNC20(
					urb_priv->td[i].start_seg,
					urb_priv->td[i].first_trb));

	for (; i < urb_priv->num_tds; i++) {
		td = &urb_priv->td[i];
		FUNC2(&td->cancelled_td_list, &ep->cancelled_td_list);
	}

	/* Queue a stop endpoint command, but only if this is
	 * the first cancellation to be handled.
	 */
	if (!(ep->ep_state & EP_STOP_CMD_PENDING)) {
		command = FUNC13(xhci, false, GFP_ATOMIC);
		if (!command) {
			ret = -ENOMEM;
			goto done;
		}
		ep->ep_state |= EP_STOP_CMD_PENDING;
		ep->stop_cmd_timer.expires = jiffies +
			XHCI_STOP_EP_CMD_TIMEOUT * HZ;
		FUNC0(&ep->stop_cmd_timer);
		FUNC18(xhci, command, urb->dev->slot_id,
					 ep_index, 0);
		FUNC19(xhci);
	}
done:
	FUNC7(&xhci->lock, flags);
	return ret;

err_giveback:
	if (urb_priv)
		FUNC21(urb_priv);
	FUNC12(hcd, urb);
	FUNC7(&xhci->lock, flags);
	FUNC11(hcd, urb, -ESHUTDOWN);
	return ret;
}