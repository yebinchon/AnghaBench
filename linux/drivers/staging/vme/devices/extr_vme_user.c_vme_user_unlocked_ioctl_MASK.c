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
struct inode {int /*<<< orphan*/  i_rdev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct file*) ; 
 TYPE_1__* image ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,struct file*,unsigned int,unsigned long) ; 

__attribute__((used)) static long
FUNC5(struct file *file, unsigned int cmd, unsigned long arg)
{
	int ret;
	struct inode *inode = FUNC1(file);
	unsigned int minor = FUNC0(inode->i_rdev);

	FUNC2(&image[minor].mutex);
	ret = FUNC4(inode, file, cmd, arg);
	FUNC3(&image[minor].mutex);

	return ret;
}