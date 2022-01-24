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
 scalar_t__ FUNC0 (char const) ; 

__attribute__((used)) static int FUNC1(const char *ida, const char *idb)
{
	int i;

	/* we only need to compare the last 4 chars */
	for (i = 3; i < 7; i++) {
		if (ida[i] != 'X' &&
		    idb[i] != 'X' && FUNC0(ida[i]) != FUNC0(idb[i]))
			return 0;
	}
	return 1;
}