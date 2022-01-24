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
 int /*<<< orphan*/  SBC7240_EXPECT_CLOSE_STATUS_BIT ; 
 int /*<<< orphan*/  SBC7240_OPEN_STATUS_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  wdt_status ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	if (FUNC2(SBC7240_EXPECT_CLOSE_STATUS_BIT, &wdt_status)
	    || !nowayout) {
		FUNC3();
	} else {
		FUNC1("Unexpected close, not stopping watchdog!\n");
		FUNC4();
	}

	FUNC0(SBC7240_OPEN_STATUS_BIT, &wdt_status);
	return 0;
}