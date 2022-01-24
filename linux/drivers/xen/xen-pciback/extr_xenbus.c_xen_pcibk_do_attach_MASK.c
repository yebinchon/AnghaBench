#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xen_pcibk_device {int evtchn_irq; TYPE_1__* xdev; void* sh_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  otherend_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xen_pcibk_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  xen_pcibk_handle_event ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,char*) ; 
 int FUNC3 (TYPE_1__*,int*,int,void**) ; 

__attribute__((used)) static int FUNC4(struct xen_pcibk_device *pdev, int gnt_ref,
			     int remote_evtchn)
{
	int err = 0;
	void *vaddr;

	FUNC1(&pdev->xdev->dev,
		"Attaching to frontend resources - gnt_ref=%d evtchn=%d\n",
		gnt_ref, remote_evtchn);

	err = FUNC3(pdev->xdev, &gnt_ref, 1, &vaddr);
	if (err < 0) {
		FUNC2(pdev->xdev, err,
				"Error mapping other domain page in ours.");
		goto out;
	}

	pdev->sh_info = vaddr;

	err = FUNC0(
		pdev->xdev->otherend_id, remote_evtchn, xen_pcibk_handle_event,
		0, DRV_NAME, pdev);
	if (err < 0) {
		FUNC2(pdev->xdev, err,
				 "Error binding event channel to IRQ");
		goto out;
	}
	pdev->evtchn_irq = err;
	err = 0;

	FUNC1(&pdev->xdev->dev, "Attached!\n");
out:
	return err;
}