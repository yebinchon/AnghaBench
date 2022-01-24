#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nvme_dev {int /*<<< orphan*/ * dbbuf_dbs; int /*<<< orphan*/  dbbuf_dbs_dma_addr; int /*<<< orphan*/  dev; void* dbbuf_eis; int /*<<< orphan*/  dbbuf_eis_dma_addr; int /*<<< orphan*/  db_stride; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nvme_dev *dev)
{
	unsigned int mem_size = FUNC2(dev->db_stride);

	if (dev->dbbuf_dbs)
		return 0;

	dev->dbbuf_dbs = FUNC0(dev->dev, mem_size,
					    &dev->dbbuf_dbs_dma_addr,
					    GFP_KERNEL);
	if (!dev->dbbuf_dbs)
		return -ENOMEM;
	dev->dbbuf_eis = FUNC0(dev->dev, mem_size,
					    &dev->dbbuf_eis_dma_addr,
					    GFP_KERNEL);
	if (!dev->dbbuf_eis) {
		FUNC1(dev->dev, mem_size,
				  dev->dbbuf_dbs, dev->dbbuf_dbs_dma_addr);
		dev->dbbuf_dbs = NULL;
		return -ENOMEM;
	}

	return 0;
}