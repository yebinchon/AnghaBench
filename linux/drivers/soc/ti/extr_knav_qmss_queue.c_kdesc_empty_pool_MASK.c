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
struct knav_pool {int num_desc; int /*<<< orphan*/  queue; TYPE_1__* kdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (struct knav_pool*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC5(struct knav_pool *pool)
{
	dma_addr_t dma;
	unsigned size;
	void *desc;
	int i;

	if (!pool->queue)
		return;

	for (i = 0;; i++) {
		dma = FUNC4(pool->queue, &size);
		if (!dma)
			break;
		desc = FUNC2(pool, dma);
		if (!desc) {
			FUNC1(pool->kdev->dev,
				"couldn't unmap desc, continuing\n");
			continue;
		}
	}
	FUNC0(i != pool->num_desc);
	FUNC3(pool->queue);
}