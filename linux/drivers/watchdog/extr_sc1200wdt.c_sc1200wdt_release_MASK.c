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
 int /*<<< orphan*/  WDTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int expect_close ; 
 int /*<<< orphan*/  open_flag ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	if (expect_close == 42) {
		FUNC3();
		FUNC2("Watchdog disabled\n");
	} else {
		FUNC4(WDTO, timeout);
		FUNC1("Unexpected close!, timeout = %d min(s)\n", timeout);
	}
	FUNC0(0, &open_flag);
	expect_close = 0;

	return 0;
}