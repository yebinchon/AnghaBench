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
 int EBUSY ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ UNIT_SECOND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ nowayout ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct inode*,struct file*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  timer_enabled ; 
 scalar_t__ unit ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	/* /dev/watchdog can only be opened once */

	if (FUNC3(0, &timer_enabled))
		return -EBUSY;

	if (nowayout)
		FUNC0(THIS_MODULE);

	/* Reload and activate timer */
	FUNC4();

	FUNC1("Watchdog enabled. Timeout set to %d %s\n",
		timeout, (unit == UNIT_SECOND) ? "second(s)" : "minute(s)");

	return FUNC2(inode, file);
}