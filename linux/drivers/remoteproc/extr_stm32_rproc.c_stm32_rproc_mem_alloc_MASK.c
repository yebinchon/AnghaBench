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
struct rproc_mem_entry {void* va; int /*<<< orphan*/  len; int /*<<< orphan*/  dma; } ;
struct TYPE_2__ {struct device* parent; } ;
struct rproc {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rproc *rproc,
				 struct rproc_mem_entry *mem)
{
	struct device *dev = rproc->dev.parent;
	void *va;

	FUNC1(dev, "map memory: %pa+%x\n", &mem->dma, mem->len);
	va = FUNC3(mem->dma, mem->len);
	if (FUNC0(va)) {
		FUNC2(dev, "Unable to map memory region: %pa+%x\n",
			&mem->dma, mem->len);
		return -ENOMEM;
	}

	/* Update memory entry va */
	mem->va = va;

	return 0;
}