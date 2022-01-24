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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int expect_close ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  timer_alive ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	/*
	 * Shut off the timer.
	 * Lock it in if it's a module and we set nowayout
	 */
	if (expect_close == 42) {
		FUNC3();
		FUNC0(0, &timer_alive);
	} else {
		FUNC2();
		FUNC1("unexpected close, not stopping watchdog!\n");
	}
	expect_close = 0;
	return 0;
}