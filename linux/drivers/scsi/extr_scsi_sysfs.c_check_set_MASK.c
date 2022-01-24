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
 unsigned long long SCAN_WILD_CARD ; 
 unsigned long long FUNC0 (char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(unsigned long long *val, char *src)
{
	char *last;

	if (FUNC1(src, "-") == 0) {
		*val = SCAN_WILD_CARD;
	} else {
		/*
		 * Doesn't check for int overflow
		 */
		*val = FUNC0(src, &last, 0);
		if (*last != '\0')
			return 1;
	}
	return 0;
}