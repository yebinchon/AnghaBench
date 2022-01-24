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
struct watchdog_device {int timeout; } ;

/* Variables and functions */
 int COUNT_ENAB ; 
 int DEBUG_EN ; 
 int MATCH_INT ; 
 int MATCH_OUTPUT_HIGH ; 
 int M_RES2 ; 
 int RESET_COUNT ; 
 int RESET_COUNT0 ; 
 int STOP_COUNT0 ; 
 int WDOG_COUNTER_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  io_lock ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_base ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct watchdog_device *wdd)
{
	FUNC9(&io_lock);

	/* stop counter, initiate counter reset */
	FUNC11(RESET_COUNT, FUNC1(wdt_base));
	/*wait for reset to complete. 100% guarantee event */
	while (FUNC8(FUNC0(wdt_base)))
		FUNC7();
	/* internal and external reset, stop after that */
	FUNC11(M_RES2 | STOP_COUNT0 | RESET_COUNT0, FUNC5(wdt_base));
	/* configure match output */
	FUNC11(MATCH_OUTPUT_HIGH, FUNC2(wdt_base));
	/* clear interrupt, just in case */
	FUNC11(MATCH_INT, FUNC3(wdt_base));
	/* the longest pulse period 65541/(13*10^6) seconds ~ 5 ms. */
	FUNC11(0xFFFF, FUNC6(wdt_base));
	FUNC11(wdd->timeout * WDOG_COUNTER_RATE, FUNC4(wdt_base));
	/*enable counter, stop when debugger active */
	FUNC11(COUNT_ENAB | DEBUG_EN, FUNC1(wdt_base));

	FUNC10(&io_lock);
	return 0;
}