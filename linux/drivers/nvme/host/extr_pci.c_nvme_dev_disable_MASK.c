#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pci_dev {scalar_t__ error_state; } ;
struct TYPE_6__ {scalar_t__ state; scalar_t__ queue_count; scalar_t__ admin_q; } ;
struct nvme_dev {int /*<<< orphan*/  shutdown_lock; TYPE_1__ ctrl; int /*<<< orphan*/  admin_tagset; int /*<<< orphan*/  tagset; int /*<<< orphan*/ * queues; scalar_t__ bar; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int NVME_CSTS_CFS ; 
 int NVME_CSTS_RDY ; 
 scalar_t__ NVME_CTRL_LIVE ; 
 scalar_t__ NVME_CTRL_RESETTING ; 
 int /*<<< orphan*/  NVME_IO_TIMEOUT ; 
 scalar_t__ NVME_REG_CSTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvme_cancel_request ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ pci_channel_io_normal ; 
 scalar_t__ FUNC15 (struct pci_dev*) ; 
 int FUNC16 (scalar_t__) ; 
 struct pci_dev* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct nvme_dev *dev, bool shutdown)
{
	bool dead = true, freeze = false;
	struct pci_dev *pdev = FUNC17(dev->dev);

	FUNC4(&dev->shutdown_lock);
	if (FUNC15(pdev)) {
		u32 csts = FUNC16(dev->bar + NVME_REG_CSTS);

		if (dev->ctrl.state == NVME_CTRL_LIVE ||
		    dev->ctrl.state == NVME_CTRL_RESETTING) {
			freeze = true;
			FUNC9(&dev->ctrl);
		}
		dead = !!((csts & NVME_CSTS_CFS) || !(csts & NVME_CSTS_RDY) ||
			pdev->error_state  != pci_channel_io_normal);
	}

	/*
	 * Give the controller a chance to complete all entered requests if
	 * doing a safe shutdown.
	 */
	if (!dead && shutdown && freeze)
		FUNC14(&dev->ctrl, NVME_IO_TIMEOUT);

	FUNC11(&dev->ctrl);

	if (!dead && dev->ctrl.queue_count > 0) {
		FUNC7(dev);
		FUNC6(dev, shutdown);
	}
	FUNC12(dev);
	FUNC13(&dev->queues[0]);
	FUNC8(dev);

	FUNC0(&dev->tagset, nvme_cancel_request, &dev->ctrl);
	FUNC0(&dev->admin_tagset, nvme_cancel_request, &dev->ctrl);
	FUNC1(&dev->tagset);
	FUNC1(&dev->admin_tagset);

	/*
	 * The driver will not be starting up queues again if shutting down so
	 * must flush all entered requests to their failed completion to avoid
	 * deadlocking blk-mq hot-cpu notifier.
	 */
	if (shutdown) {
		FUNC10(&dev->ctrl);
		if (dev->ctrl.admin_q && !FUNC3(dev->ctrl.admin_q))
			FUNC2(dev->ctrl.admin_q);
	}
	FUNC5(&dev->shutdown_lock);
}