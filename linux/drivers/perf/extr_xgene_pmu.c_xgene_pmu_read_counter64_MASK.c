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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct xgene_pmu_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xgene_pmu_dev*,int) ; 

__attribute__((used)) static inline u64 FUNC1(struct xgene_pmu_dev *pmu_dev,
					   int idx)
{
	u32 lo, hi;

	/*
	 * v3 has 64-bit counter registers composed by 2 32-bit registers
	 * This can be a problem if the counter increases and carries
	 * out of bit [31] between 2 reads. The extra reads would help
	 * to prevent this issue.
	 */
	do {
		hi = FUNC0(pmu_dev, 2 * idx + 1);
		lo = FUNC0(pmu_dev, 2 * idx);
	} while (hi != FUNC0(pmu_dev, 2 * idx + 1));

	return (((u64)hi << 32) | lo);
}