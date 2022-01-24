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
struct vhci_unlink {int /*<<< orphan*/  unlink_seqnum; } ;
struct vhci_hcd {struct vhci* vhci; } ;
struct vhci_device {int /*<<< orphan*/  priv_lock; } ;
struct vhci {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  status; } ;
struct TYPE_6__ {TYPE_2__ ret_unlink; } ;
struct TYPE_4__ {int /*<<< orphan*/  seqnum; } ;
struct usbip_header {TYPE_3__ u; TYPE_1__ base; } ;
struct urb {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 struct vhci_unlink* FUNC0 (struct vhci_device*,struct usbip_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct vhci_unlink*) ; 
 struct urb* FUNC2 (struct vhci_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usbip_header*) ; 
 struct vhci_hcd* FUNC10 (struct vhci_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct vhci_hcd*) ; 

__attribute__((used)) static void FUNC12(struct vhci_device *vdev,
				 struct usbip_header *pdu)
{
	struct vhci_hcd *vhci_hcd = FUNC10(vdev);
	struct vhci *vhci = vhci_hcd->vhci;
	struct vhci_unlink *unlink;
	struct urb *urb;
	unsigned long flags;

	FUNC9(pdu);

	unlink = FUNC0(vdev, pdu);
	if (!unlink) {
		FUNC3("cannot find the pending unlink %u\n",
			pdu->base.seqnum);
		return;
	}

	FUNC4(&vdev->priv_lock, flags);
	urb = FUNC2(vdev, unlink->unlink_seqnum);
	FUNC5(&vdev->priv_lock, flags);

	if (!urb) {
		/*
		 * I get the result of a unlink request. But, it seems that I
		 * already received the result of its submit result and gave
		 * back the URB.
		 */
		FUNC3("the urb (seqnum %d) was already given back\n",
			pdu->base.seqnum);
	} else {
		FUNC8("now giveback urb %d\n", pdu->base.seqnum);

		/* If unlink is successful, status is -ECONNRESET */
		urb->status = pdu->u.ret_unlink.status;
		FUNC3("urb->status %d\n", urb->status);

		FUNC4(&vhci->lock, flags);
		FUNC7(FUNC11(vhci_hcd), urb);
		FUNC5(&vhci->lock, flags);

		FUNC6(FUNC11(vhci_hcd), urb, urb->status);
	}

	FUNC1(unlink);
}