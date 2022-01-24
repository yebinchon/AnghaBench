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
struct megasas_instance {scalar_t__ perf_mode; int msix_vectors; int low_latency_index_start; scalar_t__ smp_affinity_enable; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MR_BALANCED_PERF_MODE ; 
 scalar_t__ MR_LATENCY_PERF_MODE ; 
 int FUNC0 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct megasas_instance*) ; 
 int FUNC3 (unsigned int,int) ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(struct megasas_instance *instance)
{
	int i;
	unsigned int num_msix_req;

	i = FUNC0(instance);

	if ((instance->perf_mode == MR_BALANCED_PERF_MODE) &&
	    (i != instance->msix_vectors)) {
		if (instance->msix_vectors)
			FUNC5(instance->pdev);
		/* Disable Balanced IOPS mode and try realloc vectors */
		instance->perf_mode = MR_LATENCY_PERF_MODE;
		instance->low_latency_index_start = 1;
		num_msix_req = FUNC4() + instance->low_latency_index_start;

		instance->msix_vectors = FUNC3(num_msix_req,
				instance->msix_vectors);

		i = FUNC0(instance);

	}

	FUNC1(&instance->pdev->dev,
		"requested/available msix %d/%d\n", instance->msix_vectors, i);

	if (i > 0)
		instance->msix_vectors = i;
	else
		instance->msix_vectors = 0;

	if (instance->smp_affinity_enable)
		FUNC2(instance);
}