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
struct dentry {int /*<<< orphan*/  d_parent; int /*<<< orphan*/  d_inode; int /*<<< orphan*/ * d_fsdata; TYPE_1__* d_sb; } ;
struct TYPE_2__ {scalar_t__ s_magic; } ;

/* Variables and functions */
 scalar_t__ DEVPTS_SUPER_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct dentry*) ; 

void FUNC6(struct dentry *dentry)
{
	FUNC0(dentry->d_sb->s_magic != DEVPTS_SUPER_MAGIC);

	dentry->d_fsdata = NULL;
	FUNC4(dentry->d_inode);
	FUNC5(FUNC2(dentry->d_parent), dentry);
	FUNC1(dentry);
	FUNC3(dentry);	/* d_alloc_name() in devpts_pty_new() */
}