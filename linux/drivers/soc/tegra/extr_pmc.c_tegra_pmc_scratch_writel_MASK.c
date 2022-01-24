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
struct tegra_pmc {scalar_t__ scratch; scalar_t__ tz_only; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra_pmc*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct tegra_pmc *pmc, u32 value,
				     unsigned long offset)
{
	if (pmc->tz_only)
		FUNC0(pmc, value, offset);
	else
		FUNC1(value, pmc->scratch + offset);
}