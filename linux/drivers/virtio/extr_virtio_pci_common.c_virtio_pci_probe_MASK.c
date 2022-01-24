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
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;
struct virtio_pci_device {TYPE_1__ vdev; scalar_t__ ioaddr; int /*<<< orphan*/  lock; int /*<<< orphan*/  virtqueues; struct pci_dev* pci_dev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ force_legacy ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_pci_device*) ; 
 struct virtio_pci_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct virtio_pci_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct virtio_pci_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct virtio_pci_device*) ; 
 int FUNC12 (struct virtio_pci_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct virtio_pci_device*) ; 
 int /*<<< orphan*/  virtio_pci_release_dev ; 

__attribute__((used)) static int FUNC14(struct pci_dev *pci_dev,
			    const struct pci_device_id *id)
{
	struct virtio_pci_device *vp_dev, *reg_dev = NULL;
	int rc;

	/* allocate our structure and fill it out */
	vp_dev = FUNC2(sizeof(struct virtio_pci_device), GFP_KERNEL);
	if (!vp_dev)
		return -ENOMEM;

	FUNC5(pci_dev, vp_dev);
	vp_dev->vdev.dev.parent = &pci_dev->dev;
	vp_dev->vdev.dev.release = virtio_pci_release_dev;
	vp_dev->pci_dev = pci_dev;
	FUNC0(&vp_dev->virtqueues);
	FUNC9(&vp_dev->lock);

	/* enable the device */
	rc = FUNC4(pci_dev);
	if (rc)
		goto err_enable_device;

	if (force_legacy) {
		rc = FUNC10(vp_dev);
		/* Also try modern mode if we can't map BAR0 (no IO space). */
		if (rc == -ENODEV || rc == -ENOMEM)
			rc = FUNC12(vp_dev);
		if (rc)
			goto err_probe;
	} else {
		rc = FUNC12(vp_dev);
		if (rc == -ENODEV)
			rc = FUNC10(vp_dev);
		if (rc)
			goto err_probe;
	}

	FUNC6(pci_dev);

	rc = FUNC8(&vp_dev->vdev);
	reg_dev = vp_dev;
	if (rc)
		goto err_register;

	return 0;

err_register:
	if (vp_dev->ioaddr)
	     FUNC11(vp_dev);
	else
	     FUNC13(vp_dev);
err_probe:
	FUNC3(pci_dev);
err_enable_device:
	if (reg_dev)
		FUNC7(&vp_dev->vdev.dev);
	else
		FUNC1(vp_dev);
	return rc;
}