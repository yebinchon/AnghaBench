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
 scalar_t__ nowayout ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  sbc8360_is_open ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct inode*,struct file*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	if (FUNC4(0, &sbc8360_is_open))
		return -EBUSY;
	if (nowayout)
		FUNC0(THIS_MODULE);

	/* Activate and ping once to start the countdown */
	FUNC1();
	FUNC2();
	return FUNC3(inode, file);
}