#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  s_bdev; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int FUNC0 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC5(struct file *filp, loff_t start, loff_t end, int datasync)
{
	struct inode *inode = filp->f_mapping->host;
	int ret, err;

	err = FUNC0(filp, start, end);
	if (err)
		return err;

	FUNC1(inode);
	ret = FUNC4(inode, 0);
	err = FUNC3(inode->i_sb->s_bdev);
	if (!ret)
		ret = err;
	FUNC2(inode);
	return ret;
}