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
struct knav_pool {TYPE_1__* region; int /*<<< orphan*/  queue; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  desc_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct knav_pool*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void *ph, void *desc)
{
	struct knav_pool *pool = ph;
	dma_addr_t dma;
	dma = FUNC0(pool, desc);
	FUNC1(pool->queue, dma, pool->region->desc_size, 0);
}