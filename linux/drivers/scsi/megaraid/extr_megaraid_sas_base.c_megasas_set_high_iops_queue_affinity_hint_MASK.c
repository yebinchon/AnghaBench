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
struct megasas_instance {scalar_t__ perf_mode; int low_latency_index_start; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MR_BALANCED_PERF_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static inline void
FUNC4(struct megasas_instance *instance)
{
	int i;
	int local_numa_node;

	if (instance->perf_mode == MR_BALANCED_PERF_MODE) {
		local_numa_node = FUNC1(&instance->pdev->dev);

		for (i = 0; i < instance->low_latency_index_start; i++)
			FUNC2(FUNC3(instance->pdev, i),
				FUNC0(local_numa_node));
	}
}