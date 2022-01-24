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
 unsigned int HZ ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static bool FUNC4(unsigned long start, unsigned int max_delay,
		     unsigned int *seconds_waited)
{
	if (FUNC3(jiffies, start + (*seconds_waited+5)*HZ)) {
		if (!*seconds_waited)
			FUNC1("Waiting for devices to initialise: ");
		*seconds_waited += 5;
		FUNC0("%us...", max_delay - *seconds_waited);
		if (*seconds_waited == max_delay) {
			FUNC0("\n");
			return true;
		}
	}

	FUNC2(HZ/10);

	return false;
}