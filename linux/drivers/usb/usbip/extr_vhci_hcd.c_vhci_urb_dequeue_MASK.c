#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vhci_unlink {int seqnum; int /*<<< orphan*/  list; int /*<<< orphan*/  unlink_seqnum; } ;
struct vhci_priv {int /*<<< orphan*/  seqnum; int /*<<< orphan*/  list; struct vhci_device* vdev; } ;
struct vhci_hcd {int /*<<< orphan*/  seqnum; struct vhci* vhci; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcp_socket; } ;
struct vhci_device {int /*<<< orphan*/  priv_lock; int /*<<< orphan*/  waitq_tx; int /*<<< orphan*/  unlink_tx; TYPE_1__ ud; } ;
struct vhci {int /*<<< orphan*/  lock; } ;
struct usb_hcd {int dummy; } ;
struct urb {int /*<<< orphan*/  status; struct vhci_priv* hcpriv; } ;

/* Variables and functions */
 int EIDRM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  VDEV_EVENT_ERROR_MALLOC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct vhci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct vhci_priv*) ; 
 struct vhci_unlink* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC11 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct usb_hcd *hcd, struct urb *urb, int status)
{
	struct vhci_hcd *vhci_hcd = FUNC1(hcd);
	struct vhci *vhci = vhci_hcd->vhci;
	struct vhci_priv *priv;
	struct vhci_device *vdev;
	unsigned long flags;

	FUNC8(&vhci->lock, flags);

	priv = urb->hcpriv;
	if (!priv) {
		/* URB was never linked! or will be soon given back by
		 * vhci_rx. */
		FUNC10(&vhci->lock, flags);
		return -EIDRM;
	}

	{
		int ret = 0;

		ret = FUNC11(hcd, urb, status);
		if (ret) {
			FUNC10(&vhci->lock, flags);
			return ret;
		}
	}

	 /* send unlink request here? */
	vdev = priv->vdev;

	if (!vdev->ud.tcp_socket) {
		/* tcp connection is closed */
		FUNC7(&vdev->priv_lock);

		FUNC5(&priv->list);
		FUNC2(priv);
		urb->hcpriv = NULL;

		FUNC9(&vdev->priv_lock);

		/*
		 * If tcp connection is alive, we have sent CMD_UNLINK.
		 * vhci_rx will receive RET_UNLINK and give back the URB.
		 * Otherwise, we give back it here.
		 */
		FUNC13(hcd, urb);

		FUNC10(&vhci->lock, flags);
		FUNC12(hcd, urb, urb->status);
		FUNC8(&vhci->lock, flags);

	} else {
		/* tcp connection is alive */
		struct vhci_unlink *unlink;

		FUNC7(&vdev->priv_lock);

		/* setup CMD_UNLINK pdu */
		unlink = FUNC3(sizeof(struct vhci_unlink), GFP_ATOMIC);
		if (!unlink) {
			FUNC9(&vdev->priv_lock);
			FUNC10(&vhci->lock, flags);
			FUNC15(&vdev->ud, VDEV_EVENT_ERROR_MALLOC);
			return -ENOMEM;
		}

		unlink->seqnum = FUNC0(&vhci_hcd->seqnum);
		if (unlink->seqnum == 0xffff)
			FUNC6("seqnum max\n");

		unlink->unlink_seqnum = priv->seqnum;

		/* send cmd_unlink and try to cancel the pending URB in the
		 * peer */
		FUNC4(&unlink->list, &vdev->unlink_tx);
		FUNC16(&vdev->waitq_tx);

		FUNC9(&vdev->priv_lock);
	}

	FUNC10(&vhci->lock, flags);

	FUNC14("leave\n");
	return 0;
}