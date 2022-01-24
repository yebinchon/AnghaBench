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
typedef  int u8 ;
struct vhci_hcd {struct vhci_device* vdev; struct vhci* vhci; } ;
struct TYPE_3__ {scalar_t__ status; int /*<<< orphan*/  lock; } ;
struct vhci_device {void* udev; TYPE_1__ ud; int /*<<< orphan*/  rhport; } ;
struct vhci {int /*<<< orphan*/  lock; } ;
struct usb_hcd {int dummy; } ;
struct usb_ctrlrequest {int bRequest; int /*<<< orphan*/  wValue; } ;
struct urb {int status; TYPE_2__* dev; scalar_t__ setup_packet; int /*<<< orphan*/  pipe; scalar_t__ transfer_buffer_length; int /*<<< orphan*/  num_sgs; int /*<<< orphan*/  transfer_buffer; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ __u8 ;
struct TYPE_4__ {int portnum; struct device dev; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ PIPE_CONTROL ; 
 int USB_DT_DEVICE ; 
#define  USB_REQ_GET_DESCRIPTOR 129 
#define  USB_REQ_SET_ADDRESS 128 
 scalar_t__ VDEV_ST_ERROR ; 
 scalar_t__ VDEV_ST_NULL ; 
 scalar_t__ VDEV_ST_USED ; 
 int VHCI_HC_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vhci_hcd* FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_hcd*,struct urb*,int) ; 
 int FUNC12 (struct usb_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_hcd*,struct urb*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (struct urb*,struct vhci_device*) ; 

__attribute__((used)) static int FUNC19(struct usb_hcd *hcd, struct urb *urb, gfp_t mem_flags)
{
	struct vhci_hcd *vhci_hcd = FUNC4(hcd);
	struct vhci *vhci = vhci_hcd->vhci;
	struct device *dev = &urb->dev->dev;
	u8 portnum = urb->dev->portnum;
	int ret = 0;
	struct vhci_device *vdev;
	unsigned long flags;

	if (portnum > VHCI_HC_PORTS) {
		FUNC5("invalid port number %d\n", portnum);
		return -ENODEV;
	}
	vdev = &vhci_hcd->vdev[portnum-1];

	if (!urb->transfer_buffer && !urb->num_sgs &&
	     urb->transfer_buffer_length) {
		FUNC1(dev, "Null URB transfer buffer\n");
		return -EINVAL;
	}

	FUNC7(&vhci->lock, flags);

	if (urb->status != -EINPROGRESS) {
		FUNC2(dev, "URB already unlinked!, status %d\n", urb->status);
		FUNC9(&vhci->lock, flags);
		return urb->status;
	}

	/* refuse enqueue for dead connection */
	FUNC6(&vdev->ud.lock);
	if (vdev->ud.status == VDEV_ST_NULL ||
	    vdev->ud.status == VDEV_ST_ERROR) {
		FUNC2(dev, "enqueue for inactive port %d\n", vdev->rhport);
		FUNC8(&vdev->ud.lock);
		FUNC9(&vhci->lock, flags);
		return -ENODEV;
	}
	FUNC8(&vdev->ud.lock);

	ret = FUNC12(hcd, urb);
	if (ret)
		goto no_need_unlink;

	/*
	 * The enumeration process is as follows;
	 *
	 *  1. Get_Descriptor request to DevAddrs(0) EndPoint(0)
	 *     to get max packet length of default pipe
	 *
	 *  2. Set_Address request to DevAddr(0) EndPoint(0)
	 *
	 */
	if (FUNC14(urb->pipe) == 0) {
		__u8 type = FUNC15(urb->pipe);
		struct usb_ctrlrequest *ctrlreq =
			(struct usb_ctrlrequest *) urb->setup_packet;

		if (type != PIPE_CONTROL || !ctrlreq) {
			FUNC2(dev, "invalid request to devnum 0\n");
			ret = -EINVAL;
			goto no_need_xmit;
		}

		switch (ctrlreq->bRequest) {
		case USB_REQ_SET_ADDRESS:
			/* set_address may come when a device is reset */
			FUNC3(dev, "SetAddress Request (%d) to port %d\n",
				 ctrlreq->wValue, vdev->rhport);

			FUNC16(vdev->udev);
			vdev->udev = FUNC10(urb->dev);

			FUNC6(&vdev->ud.lock);
			vdev->ud.status = VDEV_ST_USED;
			FUNC8(&vdev->ud.lock);

			if (urb->status == -EINPROGRESS) {
				/* This request is successfully completed. */
				/* If not -EINPROGRESS, possibly unlinked. */
				urb->status = 0;
			}

			goto no_need_xmit;

		case USB_REQ_GET_DESCRIPTOR:
			if (ctrlreq->wValue == FUNC0(USB_DT_DEVICE << 8))
				FUNC17(
					"Not yet?:Get_Descriptor to device 0 (get max pipe size)\n");

			FUNC16(vdev->udev);
			vdev->udev = FUNC10(urb->dev);
			goto out;

		default:
			/* NOT REACHED */
			FUNC2(dev,
				"invalid request to devnum 0 bRequest %u, wValue %u\n",
				ctrlreq->bRequest,
				ctrlreq->wValue);
			ret =  -EINVAL;
			goto no_need_xmit;
		}

	}

out:
	FUNC18(urb, vdev);
	FUNC9(&vhci->lock, flags);

	return 0;

no_need_xmit:
	FUNC13(hcd, urb);
no_need_unlink:
	FUNC9(&vhci->lock, flags);
	if (!ret)
		FUNC11(hcd, urb, urb->status);
	return ret;
}