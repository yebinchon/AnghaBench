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
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  WDT_FLAGS_OPEN ; 
 int /*<<< orphan*/  WDT_FLAGS_ORPHAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ safe_close ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_flags ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	if (safe_close) {
		FUNC1();
		FUNC3(THIS_MODULE);
	} else {
		FUNC4("Unexpected close - watchdog is not stopping\n");
		FUNC2();

		FUNC5(WDT_FLAGS_ORPHAN, &wdt_flags);
	}

	FUNC0(WDT_FLAGS_OPEN, &wdt_flags);
	safe_close = 0;
	return 0;
}