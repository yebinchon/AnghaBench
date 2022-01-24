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
typedef  scalar_t__ u8 ;
struct ddr_pmu {scalar_t__ base; } ;

/* Variables and functions */
 int CNTL_CLEAR ; 
 int /*<<< orphan*/  CNTL_CSV_MASK ; 
 int CNTL_EN ; 
 scalar_t__ COUNTER_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ddr_pmu *pmu, int config,
				  int counter, bool enable)
{
	u8 reg = counter * 4 + COUNTER_CNTL;
	int val;

	if (enable) {
		/*
		 * must disable first, then enable again
		 * otherwise, cycle counter will not work
		 * if previous state is enabled.
		 */
		FUNC1(0, pmu->base + reg);
		val = CNTL_EN | CNTL_CLEAR;
		val |= FUNC0(CNTL_CSV_MASK, config);
		FUNC1(val, pmu->base + reg);
	} else {
		/* Disable counter */
		FUNC1(0, pmu->base + reg);
	}
}