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
struct knav_pool {int /*<<< orphan*/  dev; TYPE_1__* region; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  desc_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct knav_pool*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

void *FUNC4(void *ph, dma_addr_t dma, unsigned dma_sz)
{
	struct knav_pool *pool = ph;
	unsigned desc_sz;
	void *desc;

	desc_sz = FUNC2(dma_sz, pool->region->desc_size);
	desc = FUNC1(pool, dma);
	FUNC0(pool->dev, dma, desc_sz, DMA_FROM_DEVICE);
	FUNC3(desc);
	return desc;
}