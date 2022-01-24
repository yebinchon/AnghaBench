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
typedef  scalar_t__ u32 ;
struct esas2r_adapter {scalar_t__ last_tick_time; scalar_t__ chip_uptime; scalar_t__ heartbeat_time; int /*<<< orphan*/  disable_cnt; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_CHPRST_DETECTED ; 
 int /*<<< orphan*/  AF_CHPRST_NEEDED ; 
 int /*<<< orphan*/  AF_CHPRST_PENDING ; 
 int /*<<< orphan*/  AF_DISC_PENDING ; 
 int /*<<< orphan*/  AF_HEARTBEAT ; 
 int /*<<< orphan*/  AF_HEARTBEAT_ENB ; 
 scalar_t__ ESAS2R_HEARTBEAT_TIME ; 
 int /*<<< orphan*/  ESAS2R_LOG_CRIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct esas2r_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC13(struct esas2r_adapter *a)
{
	u32 currtime = FUNC10(jiffies);
	u32 deltatime = currtime - a->last_tick_time;

	a->last_tick_time = currtime;

	/* count down the uptime */
	if (a->chip_uptime &&
	    !FUNC12(AF_CHPRST_PENDING, &a->flags) &&
	    !FUNC12(AF_DISC_PENDING, &a->flags)) {
		if (deltatime >= a->chip_uptime)
			a->chip_uptime = 0;
		else
			a->chip_uptime -= deltatime;
	}

	if (FUNC12(AF_CHPRST_PENDING, &a->flags)) {
		if (!FUNC12(AF_CHPRST_NEEDED, &a->flags) &&
		    !FUNC12(AF_CHPRST_DETECTED, &a->flags))
			FUNC6(a, currtime);
	} else {
		if (FUNC12(AF_DISC_PENDING, &a->flags))
			FUNC3(a);
		if (FUNC12(AF_HEARTBEAT_ENB, &a->flags)) {
			if (FUNC12(AF_HEARTBEAT, &a->flags)) {
				if ((currtime - a->heartbeat_time) >=
				    ESAS2R_HEARTBEAT_TIME) {
					FUNC1(AF_HEARTBEAT, &a->flags);
					FUNC7("heartbeat failed");
					FUNC9(ESAS2R_LOG_CRIT,
						   "heartbeat failed");
					FUNC2();
					FUNC8(a);
				}
			} else {
				FUNC11(AF_HEARTBEAT, &a->flags);
				a->heartbeat_time = currtime;
				FUNC5(a);
			}
		}
	}

	if (FUNC0(&a->disable_cnt) == 0)
		FUNC4(a);
}