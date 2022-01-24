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
 int SCLP_BUSY_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sclp_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  sclp_request_timeout_normal ; 
 scalar_t__ sclp_running_state ; 
 scalar_t__ sclp_running_state_idle ; 
 scalar_t__ sclp_running_state_running ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(bool force_restart)
{
	unsigned long flags;

	FUNC3(&sclp_lock, flags);
	if (force_restart) {
		if (sclp_running_state == sclp_running_state_running) {
			/* Break running state and queue NOP read event request
			 * to get a defined interface state. */
			FUNC0();
			sclp_running_state = sclp_running_state_idle;
		}
	} else {
		FUNC1(SCLP_BUSY_INTERVAL * HZ,
					 sclp_request_timeout_normal);
	}
	FUNC4(&sclp_lock, flags);
	FUNC2();
}