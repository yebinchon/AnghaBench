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
 int /*<<< orphan*/  WDT_FLAGS_BUSY ; 
 int /*<<< orphan*/  WDT_FLAGS_EXPECT_CLOSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_flags ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	if (FUNC4(WDT_FLAGS_EXPECT_CLOSE, &wdt_flags))
		FUNC0();
	else {
		FUNC3("device closed unexpectedly, watchdog timer will not stop!\n");
		FUNC1();
	}

	FUNC2(WDT_FLAGS_BUSY, &wdt_flags);
	FUNC2(WDT_FLAGS_EXPECT_CLOSE, &wdt_flags);

	return 0;
}