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
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ revision; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  timer; scalar_t__ io_addr; int /*<<< orphan*/  next_heartbeat; } ;

/* Variables and functions */
 scalar_t__ PCWD_REVISION_A ; 
 scalar_t__ WDT_INTERVAL ; 
 int WD_WDRST ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 TYPE_1__ pcwd_private ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct timer_list *unused)
{
	int wdrst_stat;

	/* If we got a heartbeat pulse within the WDT_INTERVAL
	 * we agree to ping the WDT */
	if (FUNC6(jiffies, pcwd_private.next_heartbeat)) {
		/* Ping the watchdog */
		FUNC4(&pcwd_private.io_lock);
		if (pcwd_private.revision == PCWD_REVISION_A) {
			/*  Rev A cards are reset by setting the
			    WD_WDRST bit in register 1 */
			wdrst_stat = FUNC0(pcwd_private.io_addr);
			wdrst_stat &= 0x0F;
			wdrst_stat |= WD_WDRST;

			FUNC2(wdrst_stat, pcwd_private.io_addr + 1);
		} else {
			/* Re-trigger watchdog by writing to port 0 */
			FUNC2(0x00, pcwd_private.io_addr);
		}

		/* Re-set the timer interval */
		FUNC1(&pcwd_private.timer, jiffies + WDT_INTERVAL);

		FUNC5(&pcwd_private.io_lock);
	} else {
		FUNC3("Heartbeat lost! Will not ping the watchdog\n");
	}
}