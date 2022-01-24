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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int DCC_STATUS_TX ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(uint32_t vt, const char *buf, int count)
{
	int i;

	for (i = 0; i < count; i++) {
		while (FUNC0() & DCC_STATUS_TX)
			FUNC2();

		FUNC1(buf[i]);
	}

	return count;
}