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
 int adv_expect_close ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  advwdt_is_open ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	if (adv_expect_close == 42) {
		FUNC0();
	} else {
		FUNC3("Unexpected close, not stopping watchdog!\n");
		FUNC1();
	}
	FUNC2(0, &advwdt_is_open);
	adv_expect_close = 0;
	return 0;
}