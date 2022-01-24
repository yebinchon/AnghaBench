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
struct rproc_dump_segment {size_t size; int /*<<< orphan*/  node; int /*<<< orphan*/  da; } ;
struct rproc {int /*<<< orphan*/  dump_segments; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct rproc_dump_segment* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct rproc *rproc, dma_addr_t da, size_t size)
{
	struct rproc_dump_segment *segment;

	segment = FUNC0(sizeof(*segment), GFP_KERNEL);
	if (!segment)
		return -ENOMEM;

	segment->da = da;
	segment->size = size;

	FUNC1(&segment->node, &rproc->dump_segments);

	return 0;
}