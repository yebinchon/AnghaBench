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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDT_ENABLED ; 
 int /*<<< orphan*/  WDT_IN_USE ; 
 int /*<<< orphan*/  WDT_OK_TO_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  wdt_status ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	int state = 1;
	if (FUNC3(WDT_OK_TO_CLOSE, &wdt_status))
		if (FUNC3(WDT_ENABLED, &wdt_status))
			state = FUNC4();

	/* if the timer is not disabled reload and notify that we are still
	 * going down
	 */
	if (state != 0) {
		FUNC5();
		FUNC2("Device closed unexpectedly - reset in %lu seconds\n",
			FUNC1());
	}

	FUNC0(WDT_IN_USE, &wdt_status);
	FUNC0(WDT_OK_TO_CLOSE, &wdt_status);

	return 0;
}