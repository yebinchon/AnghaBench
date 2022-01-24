#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfio_pci_device {int num_ctx; TYPE_1__* ctx; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct msi_msg {int dummy; } ;
struct eventfd_ctx {int dummy; } ;
struct TYPE_5__ {int irq; struct eventfd_ctx* token; } ;
struct TYPE_4__ {struct eventfd_ctx* trigger; TYPE_2__ producer; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct eventfd_ctx*) ; 
 int FUNC1 (struct eventfd_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,struct eventfd_ctx*,int) ; 
 struct eventfd_ctx* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct eventfd_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct eventfd_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct msi_msg*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct msi_msg*) ; 
 int FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct eventfd_ctx*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  vfio_msihandler ; 

__attribute__((used)) static int FUNC16(struct vfio_pci_device *vdev,
				      int vector, int fd, bool msix)
{
	struct pci_dev *pdev = vdev->pdev;
	struct eventfd_ctx *trigger;
	int irq, ret;

	if (vector < 0 || vector >= vdev->num_ctx)
		return -EINVAL;

	irq = FUNC11(pdev, vector);

	if (vdev->ctx[vector].trigger) {
		FUNC5(irq, vdev->ctx[vector].trigger);
		FUNC8(&vdev->ctx[vector].producer);
		FUNC10(vdev->ctx[vector].name);
		FUNC4(vdev->ctx[vector].trigger);
		vdev->ctx[vector].trigger = NULL;
	}

	if (fd < 0)
		return 0;

	vdev->ctx[vector].name = FUNC9(GFP_KERNEL, "vfio-msi%s[%d](%s)",
					   msix ? "x" : "", vector,
					   FUNC12(pdev));
	if (!vdev->ctx[vector].name)
		return -ENOMEM;

	trigger = FUNC3(fd);
	if (FUNC0(trigger)) {
		FUNC10(vdev->ctx[vector].name);
		return FUNC1(trigger);
	}

	/*
	 * The MSIx vector table resides in device memory which may be cleared
	 * via backdoor resets. We don't allow direct access to the vector
	 * table so even if a userspace driver attempts to save/restore around
	 * such a reset it would be unsuccessful. To avoid this, restore the
	 * cached value of the message prior to enabling.
	 */
	if (msix) {
		struct msi_msg msg;

		FUNC6(irq, &msg);
		FUNC13(irq, &msg);
	}

	ret = FUNC14(irq, vfio_msihandler, 0,
			  vdev->ctx[vector].name, trigger);
	if (ret) {
		FUNC10(vdev->ctx[vector].name);
		FUNC4(trigger);
		return ret;
	}

	vdev->ctx[vector].producer.token = trigger;
	vdev->ctx[vector].producer.irq = irq;
	ret = FUNC7(&vdev->ctx[vector].producer);
	if (FUNC15(ret))
		FUNC2(&pdev->dev,
		"irq bypass producer (token %p) registration fails: %d\n",
		vdev->ctx[vector].producer.token, ret);

	vdev->ctx[vector].trigger = trigger;

	return 0;
}