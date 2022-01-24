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
struct hrtimer {int dummy; } ;
typedef  enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;

/* Variables and functions */
 int HRTIMER_NORESTART ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ soft_noboot ; 
 scalar_t__ soft_panic ; 

__attribute__((used)) static enum hrtimer_restart FUNC4(struct hrtimer *timer)
{
	FUNC1(THIS_MODULE);
	if (soft_noboot) {
		FUNC3("Triggered - Reboot ignored\n");
	} else if (soft_panic) {
		FUNC3("Initiating panic\n");
		FUNC2("Software Watchdog Timer expired");
	} else {
		FUNC3("Initiating system reboot\n");
		FUNC0();
		FUNC3("Reboot didn't ?????\n");
	}

	return HRTIMER_NORESTART;
}