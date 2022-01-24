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
 int HZ ; 
 scalar_t__ WDT_INTERVAL ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ next_heartbeat ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int timeout ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC2(void)
{
	next_heartbeat = jiffies + (timeout * HZ);

	/* Start the timer */
	FUNC0(&timer, jiffies + WDT_INTERVAL);
	FUNC1("Watchdog timer is now enabled\n");
}