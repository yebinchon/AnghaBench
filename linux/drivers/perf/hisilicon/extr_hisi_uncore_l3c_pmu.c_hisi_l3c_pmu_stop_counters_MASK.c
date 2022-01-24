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
typedef  int /*<<< orphan*/  u32 ;
struct hisi_pmu {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ L3C_PERF_CTRL ; 
 int /*<<< orphan*/  L3C_PERF_CTRL_EN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct hisi_pmu *l3c_pmu)
{
	u32 val;

	/*
	 * Clear perf_enable bit in L3C_PERF_CTRL register to stop counting
	 * for all enabled counters.
	 */
	val = FUNC0(l3c_pmu->base + L3C_PERF_CTRL);
	val &= ~(L3C_PERF_CTRL_EN);
	FUNC1(val, l3c_pmu->base + L3C_PERF_CTRL);
}