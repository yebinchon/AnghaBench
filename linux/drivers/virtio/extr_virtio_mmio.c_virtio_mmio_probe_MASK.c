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
struct TYPE_6__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {void* vendor; void* device; } ;
struct TYPE_5__ {TYPE_3__ dev; TYPE_1__ id; int /*<<< orphan*/ * config; } ;
struct virtio_mmio_device {int version; TYPE_2__ vdev; int /*<<< orphan*/ * base; int /*<<< orphan*/  lock; int /*<<< orphan*/  virtqueues; struct platform_device* pdev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int VIRTIO_MMIO_DEVICE_ID ; 
 int VIRTIO_MMIO_GUEST_PAGE_SIZE ; 
 int VIRTIO_MMIO_MAGIC_VALUE ; 
 int VIRTIO_MMIO_VENDOR_ID ; 
 int VIRTIO_MMIO_VERSION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct virtio_mmio_device* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct virtio_mmio_device*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 void* FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  virtio_mmio_config_ops ; 
 int /*<<< orphan*/  virtio_mmio_release_dev ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct virtio_mmio_device *vm_dev;
	struct resource *mem;
	unsigned long magic;
	int rc;

	mem = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!mem)
		return -EINVAL;

	if (!FUNC6(&pdev->dev, mem->start,
			FUNC15(mem), pdev->name))
		return -EBUSY;

	vm_dev = FUNC5(&pdev->dev, sizeof(*vm_dev), GFP_KERNEL);
	if (!vm_dev)
		return -ENOMEM;

	vm_dev->vdev.dev.parent = &pdev->dev;
	vm_dev->vdev.dev.release = virtio_mmio_release_dev;
	vm_dev->vdev.config = &virtio_mmio_config_ops;
	vm_dev->pdev = pdev;
	FUNC1(&vm_dev->virtqueues);
	FUNC16(&vm_dev->lock);

	vm_dev->base = FUNC4(&pdev->dev, mem->start, FUNC15(mem));
	if (vm_dev->base == NULL)
		return -EFAULT;

	/* Check magic value */
	magic = FUNC13(vm_dev->base + VIRTIO_MMIO_MAGIC_VALUE);
	if (magic != ('v' | 'i' << 8 | 'r' << 16 | 't' << 24)) {
		FUNC3(&pdev->dev, "Wrong magic value 0x%08lx!\n", magic);
		return -ENODEV;
	}

	/* Check device version */
	vm_dev->version = FUNC13(vm_dev->base + VIRTIO_MMIO_VERSION);
	if (vm_dev->version < 1 || vm_dev->version > 2) {
		FUNC2(&pdev->dev, "Version %ld not supported!\n",
				vm_dev->version);
		return -ENXIO;
	}

	vm_dev->vdev.id.device = FUNC13(vm_dev->base + VIRTIO_MMIO_DEVICE_ID);
	if (vm_dev->vdev.id.device == 0) {
		/*
		 * virtio-mmio device with an ID 0 is a (dummy) placeholder
		 * with no function. End probing now with no error reported.
		 */
		return -ENODEV;
	}
	vm_dev->vdev.id.vendor = FUNC13(vm_dev->base + VIRTIO_MMIO_VENDOR_ID);

	if (vm_dev->version == 1) {
		FUNC17(PAGE_SIZE, vm_dev->base + VIRTIO_MMIO_GUEST_PAGE_SIZE);

		rc = FUNC8(&pdev->dev, FUNC0(64));
		/*
		 * In the legacy case, ensure our coherently-allocated virtio
		 * ring will be at an address expressable as a 32-bit PFN.
		 */
		if (!rc)
			FUNC7(&pdev->dev,
					      FUNC0(32 + PAGE_SHIFT));
	} else {
		rc = FUNC9(&pdev->dev, FUNC0(64));
	}
	if (rc)
		rc = FUNC9(&pdev->dev, FUNC0(32));
	if (rc)
		FUNC3(&pdev->dev, "Failed to enable 64-bit or 32-bit DMA.  Trying to continue, but this might not work.\n");

	FUNC11(pdev, vm_dev);

	rc = FUNC14(&vm_dev->vdev);
	if (rc)
		FUNC12(&vm_dev->vdev.dev);

	return rc;
}