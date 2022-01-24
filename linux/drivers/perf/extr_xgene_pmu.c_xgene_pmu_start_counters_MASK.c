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
struct xgene_pmu_dev {TYPE_1__* inf; } ;
struct TYPE_2__ {scalar_t__ csr; } ;

/* Variables and functions */
 scalar_t__ PMU_PMCR ; 
 int /*<<< orphan*/  PMU_PMCR_E ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct xgene_pmu_dev *pmu_dev)
{
	u32 val;

	val = FUNC0(pmu_dev->inf->csr + PMU_PMCR);
	val |= PMU_PMCR_E;
	FUNC1(val, pmu_dev->inf->csr + PMU_PMCR);
}