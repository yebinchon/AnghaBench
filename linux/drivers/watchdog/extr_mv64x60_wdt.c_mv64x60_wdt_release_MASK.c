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
 int /*<<< orphan*/  MV64x60_WDOG_FLAG_OPENED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int expect_close ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  wdt_flags ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	if (expect_close == 42)
		FUNC1();
	else {
		FUNC3("unexpected close, not stopping timer!\n");
		FUNC2();
	}
	expect_close = 0;

	FUNC0(MV64x60_WDOG_FLAG_OPENED, &wdt_flags);

	return 0;
}