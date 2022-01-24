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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int zf_expect_close ; 
 int /*<<< orphan*/  zf_is_open ; 
 int /*<<< orphan*/  zf_timer ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	if (zf_expect_close == 42)
		FUNC3();
	else {
		FUNC1(&zf_timer);
		FUNC2("device file closed unexpectedly. Will not stop the WDT!\n");
	}
	FUNC0(0, &zf_is_open);
	zf_expect_close = 0;
	return 0;
}