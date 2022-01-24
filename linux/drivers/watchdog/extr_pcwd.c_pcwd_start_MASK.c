#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ revision; int /*<<< orphan*/  io_lock; scalar_t__ io_addr; int /*<<< orphan*/  timer; scalar_t__ next_heartbeat; } ;

/* Variables and functions */
 int EIO ; 
 int HZ ; 
 int /*<<< orphan*/  ISA_COMMAND_TIMEOUT ; 
 scalar_t__ PCWD_REVISION_C ; 
 scalar_t__ VERBOSE ; 
 scalar_t__ WDT_INTERVAL ; 
 int WD_WDIS ; 
 scalar_t__ debug ; 
 int heartbeat ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 TYPE_1__ pcwd_private ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void)
{
	int stat_reg;

	pcwd_private.next_heartbeat = jiffies + (heartbeat * HZ);

	/* Start the timer */
	FUNC1(&pcwd_private.timer, jiffies + WDT_INTERVAL);

	/* Enable the port */
	if (pcwd_private.revision == PCWD_REVISION_C) {
		FUNC5(&pcwd_private.io_lock);
		FUNC2(0x00, pcwd_private.io_addr + 3);
		FUNC7(ISA_COMMAND_TIMEOUT);
		stat_reg = FUNC0(pcwd_private.io_addr + 2);
		FUNC6(&pcwd_private.io_lock);
		if (stat_reg & WD_WDIS) {
			FUNC4("Could not start watchdog\n");
			return -EIO;
		}
	}

	if (debug >= VERBOSE)
		FUNC3("Watchdog started\n");

	return 0;
}