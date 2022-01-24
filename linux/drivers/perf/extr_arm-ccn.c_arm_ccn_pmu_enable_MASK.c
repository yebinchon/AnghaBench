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
typedef  int /*<<< orphan*/  u32 ;
struct pmu {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct arm_ccn {TYPE_1__ dt; } ;

/* Variables and functions */
 scalar_t__ CCN_DT_PMCR ; 
 int /*<<< orphan*/  CCN_DT_PMCR__PMU_EN ; 
 struct arm_ccn* FUNC0 (struct pmu*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct pmu *pmu)
{
	struct arm_ccn *ccn = FUNC0(pmu);

	u32 val = FUNC1(ccn->dt.base + CCN_DT_PMCR);
	val |= CCN_DT_PMCR__PMU_EN;
	FUNC2(val, ccn->dt.base + CCN_DT_PMCR);
}