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
struct perf_ctx {TYPE_1__* ntb; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int NUMA_NO_NODE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(struct dma_chan *chan, void *data)
{
	struct perf_ctx *perf = data;
	int node;

	node = FUNC0(&perf->ntb->dev);

	return node == NUMA_NO_NODE || node == FUNC0(chan->device->dev);
}