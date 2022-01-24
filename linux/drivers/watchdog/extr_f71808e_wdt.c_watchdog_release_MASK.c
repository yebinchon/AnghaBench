#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  expect_close; int /*<<< orphan*/  opened; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ watchdog ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	FUNC0(0, &watchdog.opened);

	if (!watchdog.expect_close) {
		FUNC2();
		FUNC1("Unexpected close, not stopping watchdog!\n");
	} else if (!nowayout) {
		FUNC3();
	}
	return 0;
}