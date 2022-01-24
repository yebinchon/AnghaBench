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
 int DCC_STATUS_TX ; 
 int HZ ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int jiffies ; 
 scalar_t__ FUNC2 (unsigned long) ; 

__attribute__((used)) static bool FUNC3(void)
{
	unsigned long time = jiffies + (HZ / 10);

	/* Write a test character to check if it is handled */
	FUNC1('\n');

	while (FUNC2(time)) {
		if (!(FUNC0() & DCC_STATUS_TX))
			return true;
	}

	return false;
}