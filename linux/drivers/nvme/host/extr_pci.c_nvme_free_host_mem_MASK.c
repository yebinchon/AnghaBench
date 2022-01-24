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
struct nvme_host_mem_buf_desc {int /*<<< orphan*/  addr; int /*<<< orphan*/  size; } ;
struct TYPE_2__ {size_t page_size; } ;
struct nvme_dev {int nr_host_mem_descs; struct nvme_host_mem_buf_desc* host_mem_descs; int /*<<< orphan*/  host_mem_descs_dma; int /*<<< orphan*/  dev; int /*<<< orphan*/ * host_mem_desc_bufs; TYPE_1__ ctrl; } ;

/* Variables and functions */
 int DMA_ATTR_NO_KERNEL_MAPPING ; 
 int DMA_ATTR_NO_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct nvme_host_mem_buf_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nvme_dev *dev)
{
	int i;

	for (i = 0; i < dev->nr_host_mem_descs; i++) {
		struct nvme_host_mem_buf_desc *desc = &dev->host_mem_descs[i];
		size_t size = FUNC3(desc->size) * dev->ctrl.page_size;

		FUNC0(dev->dev, size, dev->host_mem_desc_bufs[i],
			       FUNC4(desc->addr),
			       DMA_ATTR_NO_KERNEL_MAPPING | DMA_ATTR_NO_WARN);
	}

	FUNC2(dev->host_mem_desc_bufs);
	dev->host_mem_desc_bufs = NULL;
	FUNC1(dev->dev,
			dev->nr_host_mem_descs * sizeof(*dev->host_mem_descs),
			dev->host_mem_descs, dev->host_mem_descs_dma);
	dev->host_mem_descs = NULL;
	dev->nr_host_mem_descs = 0;
}