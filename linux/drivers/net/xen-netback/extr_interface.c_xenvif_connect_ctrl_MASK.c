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
struct TYPE_2__ {int /*<<< orphan*/ * sring; } ;
struct xenvif {int ctrl_irq; TYPE_1__ ctrl; int /*<<< orphan*/  domid; struct net_device* dev; } ;
struct xen_netif_ctrl_sring {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  grant_ref_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct xen_netif_ctrl_sring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  XEN_PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct xenvif*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct xenvif*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xenvif_ctrl_irq_fn ; 
 int /*<<< orphan*/  FUNC7 (struct xenvif*) ; 
 int /*<<< orphan*/  FUNC8 (struct xenvif*) ; 
 int /*<<< orphan*/  FUNC9 (struct xenvif*) ; 

int FUNC10(struct xenvif *vif, grant_ref_t ring_ref,
			unsigned int evtchn)
{
	struct net_device *dev = vif->dev;
	void *addr;
	struct xen_netif_ctrl_sring *shared;
	int err;

	err = FUNC5(FUNC9(vif),
				     &ring_ref, 1, &addr);
	if (err)
		goto err;

	shared = (struct xen_netif_ctrl_sring *)addr;
	FUNC0(&vif->ctrl, shared, XEN_PAGE_SIZE);

	err = FUNC1(vif->domid, evtchn);
	if (err < 0)
		goto err_unmap;

	vif->ctrl_irq = err;

	FUNC8(vif);

	err = FUNC3(vif->ctrl_irq, NULL, xenvif_ctrl_irq_fn,
				   IRQF_ONESHOT, "xen-netback-ctrl", vif);
	if (err) {
		FUNC2("Could not setup irq handler for %s\n", dev->name);
		goto err_deinit;
	}

	return 0;

err_deinit:
	FUNC7(vif);
	FUNC4(vif->ctrl_irq, vif);
	vif->ctrl_irq = 0;

err_unmap:
	FUNC6(FUNC9(vif),
				vif->ctrl.sring);
	vif->ctrl.sring = NULL;

err:
	return err;
}