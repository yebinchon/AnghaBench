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
 int /*<<< orphan*/  acq_is_open ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ nowayout ; 
 int FUNC2 (struct inode*,struct file*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	if (FUNC3(0, &acq_is_open))
		return -EBUSY;

	if (nowayout)
		FUNC0(THIS_MODULE);

	/* Activate */
	FUNC1();
	return FUNC2(inode, file);
}