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
 int EBUSY ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mixcomwd_opened ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  mixcomwd_timer ; 
 scalar_t__ mixcomwd_timer_alive ; 
 scalar_t__ nowayout ; 
 int FUNC3 (struct inode*,struct file*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	if (FUNC4(0, &mixcomwd_opened))
		return -EBUSY;

	FUNC2();

	if (nowayout)
		/*
		 * fops_get() code via open() has already done
		 * a try_module_get() so it is safe to do the
		 * __module_get().
		 */
		FUNC0(THIS_MODULE);
	else {
		if (mixcomwd_timer_alive) {
			FUNC1(&mixcomwd_timer);
			mixcomwd_timer_alive = 0;
		}
	}
	return FUNC3(inode, file);
}