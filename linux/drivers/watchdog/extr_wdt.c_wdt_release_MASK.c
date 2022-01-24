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
 int /*<<< orphan*/  wdt_is_open ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	if (expect_close == 42) {
		FUNC3();
		FUNC0(0, &wdt_is_open);
	} else {
		FUNC1("WDT device closed unexpectedly.  WDT will not stop!\n");
		FUNC2();
	}
	expect_close = 0;
	return 0;
}