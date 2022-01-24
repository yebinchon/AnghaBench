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
struct vhci_priv {int seqnum; int /*<<< orphan*/  list; struct urb* urb; struct vhci_device* vdev; } ;
struct vhci_hcd {int /*<<< orphan*/  seqnum; } ;
struct vhci_device {int /*<<< orphan*/  priv_lock; int /*<<< orphan*/  waitq_tx; int /*<<< orphan*/  priv_tx; int /*<<< orphan*/  ud; } ;
struct urb {void* hcpriv; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  VDEV_EVENT_ERROR_MALLOC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct vhci_priv* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vhci_hcd* FUNC7 (struct vhci_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct urb *urb, struct vhci_device *vdev)
{
	struct vhci_priv *priv;
	struct vhci_hcd *vhci_hcd = FUNC7(vdev);
	unsigned long flags;

	priv = FUNC2(sizeof(struct vhci_priv), GFP_ATOMIC);
	if (!priv) {
		FUNC6(&vdev->ud, VDEV_EVENT_ERROR_MALLOC);
		return;
	}

	FUNC4(&vdev->priv_lock, flags);

	priv->seqnum = FUNC0(&vhci_hcd->seqnum);
	if (priv->seqnum == 0xffff)
		FUNC1(&urb->dev->dev, "seqnum max\n");

	priv->vdev = vdev;
	priv->urb = urb;

	urb->hcpriv = (void *) priv;

	FUNC3(&priv->list, &vdev->priv_tx);

	FUNC8(&vdev->waitq_tx);
	FUNC5(&vdev->priv_lock, flags);
}