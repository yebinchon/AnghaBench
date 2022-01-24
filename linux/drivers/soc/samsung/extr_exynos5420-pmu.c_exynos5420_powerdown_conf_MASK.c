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
typedef  enum sys_powerdown { ____Placeholder_sys_powerdown } sys_powerdown ;

/* Variables and functions */
 int /*<<< orphan*/  EXYNOS_IROM_DATA2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(enum sys_powerdown mode)
{
	u32 this_cluster;

	this_cluster = FUNC0(FUNC2(), 1);

	/*
	 * set the cluster id to IROM register to ensure that we wake
	 * up with the current cluster.
	 */
	FUNC1(this_cluster, EXYNOS_IROM_DATA2);
}