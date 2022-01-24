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
struct pmu {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  used_mask; } ;
struct hisi_pmu {TYPE_2__* ops; int /*<<< orphan*/  num_counters; TYPE_1__ pmu_events; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* start_counters ) (struct hisi_pmu*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_pmu*) ; 
 struct hisi_pmu* FUNC2 (struct pmu*) ; 

void FUNC3(struct pmu *pmu)
{
	struct hisi_pmu *hisi_pmu = FUNC2(pmu);
	int enabled = FUNC0(hisi_pmu->pmu_events.used_mask,
				    hisi_pmu->num_counters);

	if (!enabled)
		return;

	hisi_pmu->ops->start_counters(hisi_pmu);
}