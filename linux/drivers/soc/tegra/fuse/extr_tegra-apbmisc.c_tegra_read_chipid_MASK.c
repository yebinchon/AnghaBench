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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ apbmisc_base ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

u32 FUNC2(void)
{
	if (!apbmisc_base) {
		FUNC0(1, "Tegra Chip ID not yet available\n");
		return 0;
	}

	return FUNC1(apbmisc_base + 4);
}