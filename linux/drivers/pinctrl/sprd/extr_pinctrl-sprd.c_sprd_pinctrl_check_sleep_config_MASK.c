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
 unsigned int PIN_CONFIG_SLEEP_HARDWARE_STATE ; 
 unsigned int FUNC0 (unsigned long) ; 

__attribute__((used)) static bool FUNC1(unsigned long *configs,
					    unsigned int num_configs)
{
	unsigned int param;
	int i;

	for (i = 0; i < num_configs; i++) {
		param = FUNC0(configs[i]);
		if (param == PIN_CONFIG_SLEEP_HARDWARE_STATE)
			return true;
	}

	return false;
}