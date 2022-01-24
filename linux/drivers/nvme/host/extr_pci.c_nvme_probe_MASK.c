#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {unsigned long driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct nvme_queue {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; int /*<<< orphan*/  reset_work; } ;
struct nvme_dev {struct nvme_dev* queues; int /*<<< orphan*/  dev; int /*<<< orphan*/  iod_mempool; TYPE_1__ ctrl; int /*<<< orphan*/  shutdown_lock; int /*<<< orphan*/  remove_work; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NUMA_NO_NODE ; 
 int /*<<< orphan*/  NVME_MAX_KB_SZ ; 
 int /*<<< orphan*/  NVME_MAX_SEGS ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nvme_dev*) ; 
 unsigned long FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  first_memory_node ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct nvme_dev* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_dev*) ; 
 struct nvme_dev* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mempool_kfree ; 
 int /*<<< orphan*/  mempool_kmalloc ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvme_async_probe ; 
 int FUNC15 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int FUNC18 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  nvme_pci_ctrl_ops ; 
 size_t FUNC19 (struct nvme_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct nvme_dev*) ; 
 int /*<<< orphan*/  nvme_remove_dead_ctrl_work ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  nvme_reset_work ; 
 int FUNC22 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*,struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct pci_dev *pdev, const struct pci_device_id *id)
{
	int node, result = -ENOMEM;
	struct nvme_dev *dev;
	unsigned long quirks = id->driver_data;
	size_t alloc_size;

	node = FUNC6(&pdev->dev);
	if (node == NUMA_NO_NODE)
		FUNC25(&pdev->dev, first_memory_node);

	dev = FUNC10(sizeof(*dev), GFP_KERNEL, node);
	if (!dev)
		return -ENOMEM;

	dev->queues = FUNC8(FUNC11(), sizeof(struct nvme_queue),
					GFP_KERNEL, node);
	if (!dev->queues)
		goto free;

	dev->dev = FUNC7(&pdev->dev);
	FUNC23(pdev, dev);

	result = FUNC15(dev);
	if (result)
		goto put_pci;

	FUNC0(&dev->ctrl.reset_work, nvme_reset_work);
	FUNC0(&dev->remove_work, nvme_remove_dead_ctrl_work);
	FUNC14(&dev->shutdown_lock);

	result = FUNC22(dev);
	if (result)
		goto unmap;

	quirks |= FUNC3(pdev);

	/*
	 * Double check that our mempool alloc size will cover the biggest
	 * command we support.
	 */
	alloc_size = FUNC19(dev, NVME_MAX_KB_SZ,
						NVME_MAX_SEGS, true);
	FUNC1(alloc_size > PAGE_SIZE);

	dev->iod_mempool = FUNC12(1, mempool_kmalloc,
						mempool_kfree,
						(void *) alloc_size,
						GFP_KERNEL, node);
	if (!dev->iod_mempool) {
		result = -ENOMEM;
		goto release_pools;
	}

	result = FUNC18(&dev->ctrl, &pdev->dev, &nvme_pci_ctrl_ops,
			quirks);
	if (result)
		goto release_mempool;

	FUNC4(dev->ctrl.device, "pci function %s\n", FUNC5(&pdev->dev));

	FUNC21(&dev->ctrl);
	FUNC17(&dev->ctrl);
	FUNC2(nvme_async_probe, dev);

	return 0;

 release_mempool:
	FUNC13(dev->iod_mempool);
 release_pools:
	FUNC20(dev);
 unmap:
	FUNC16(dev);
 put_pci:
	FUNC24(dev->dev);
 free:
	FUNC9(dev->queues);
	FUNC9(dev);
	return result;
}