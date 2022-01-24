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
struct vhci_hcd {int /*<<< orphan*/  seqnum; struct vhci* vhci; } ;
struct usbip_device {int dummy; } ;
struct vhci_device {int /*<<< orphan*/  priv_lock; struct usbip_device ud; } ;
struct vhci {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  seqnum; } ;
struct usbip_header {TYPE_1__ base; } ;
struct urb {int /*<<< orphan*/  status; int /*<<< orphan*/  transfer_flags; scalar_t__ num_sgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  URB_DMA_MAP_SG ; 
 int /*<<< orphan*/  USBIP_RET_SUBMIT ; 
 int /*<<< orphan*/  VDEV_EVENT_ERROR_TCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct urb* FUNC1 (struct vhci_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct urb*) ; 
 scalar_t__ usbip_dbg_flag_vhci_rx ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 
 int /*<<< orphan*/  FUNC9 (struct usbip_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usbip_header*,struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usbip_device*,struct urb*) ; 
 scalar_t__ FUNC12 (struct usbip_device*,struct urb*) ; 
 scalar_t__ FUNC13 (struct usbip_device*,struct urb*) ; 
 struct vhci_hcd* FUNC14 (struct vhci_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct vhci_hcd*) ; 

__attribute__((used)) static void FUNC16(struct vhci_device *vdev,
				 struct usbip_header *pdu)
{
	struct vhci_hcd *vhci_hcd = FUNC14(vdev);
	struct vhci *vhci = vhci_hcd->vhci;
	struct usbip_device *ud = &vdev->ud;
	struct urb *urb;
	unsigned long flags;

	FUNC3(&vdev->priv_lock, flags);
	urb = FUNC1(vdev, pdu->base.seqnum);
	FUNC4(&vdev->priv_lock, flags);

	if (!urb) {
		FUNC2("cannot find a urb of seqnum %u max seqnum %d\n",
			pdu->base.seqnum,
			FUNC0(&vhci_hcd->seqnum));
		FUNC9(ud, VDEV_EVENT_ERROR_TCP);
		return;
	}

	/* unpack the pdu to a urb */
	FUNC10(pdu, urb, USBIP_RET_SUBMIT, 0);

	/* recv transfer buffer */
	if (FUNC13(ud, urb) < 0)
		return;

	/* recv iso_packet_descriptor */
	if (FUNC12(ud, urb) < 0)
		return;

	/* restore the padding in iso packets */
	FUNC11(ud, urb);

	if (usbip_dbg_flag_vhci_rx)
		FUNC8(urb);

	if (urb->num_sgs)
		urb->transfer_flags &= ~URB_DMA_MAP_SG;

	FUNC7("now giveback urb %u\n", pdu->base.seqnum);

	FUNC3(&vhci->lock, flags);
	FUNC6(FUNC15(vhci_hcd), urb);
	FUNC4(&vhci->lock, flags);

	FUNC5(FUNC15(vhci_hcd), urb, urb->status);

	FUNC7("Leave\n");
}