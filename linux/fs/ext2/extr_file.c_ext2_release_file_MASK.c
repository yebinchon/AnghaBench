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
struct file {int f_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  truncate_mutex; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 (struct inode * inode, struct file * filp)
{
	if (filp->f_mode & FMODE_WRITE) {
		FUNC2(&FUNC0(inode)->truncate_mutex);
		FUNC1(inode);
		FUNC3(&FUNC0(inode)->truncate_mutex);
	}
	return 0;
}