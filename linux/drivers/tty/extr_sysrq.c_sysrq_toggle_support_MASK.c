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

/* Variables and functions */
 int sysrq_enabled ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(int enable_mask)
{
	bool was_enabled = FUNC0();

	sysrq_enabled = enable_mask;

	if (was_enabled != FUNC0()) {
		if (FUNC0())
			FUNC1();
		else
			FUNC2();
	}

	return 0;
}