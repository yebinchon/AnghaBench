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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__* ashs_ids ; 

__attribute__((used)) static bool FUNC1(void)
{
	int i = 0;
	while (ashs_ids[i]) {
		if (FUNC0(ashs_ids[i++]))
			return true;
	}
	return false;
}