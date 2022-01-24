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
struct work_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ TPACPI_LIFE_RUNNING ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ tpacpi_lifecycle ; 

__attribute__((used)) static void FUNC4(struct work_struct *ignored)
{
	int rc;

	if (tpacpi_lifecycle != TPACPI_LIFE_RUNNING)
		return;

	FUNC3("fan watchdog: enabling fan\n");
	rc = FUNC0();
	if (rc < 0) {
		FUNC2("fan watchdog: error %d while enabling fan, will try again later...\n",
		       rc);
		/* reschedule for later */
		FUNC1();
	}
}