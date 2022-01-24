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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,struct super_block*) ; 

__attribute__((used)) static int FUNC5(struct dentry *lower_dentry,
			      struct dentry *dentry, struct super_block *sb)
{
	struct inode *inode = FUNC4(FUNC2(lower_dentry), sb);

	if (FUNC0(inode))
		return FUNC1(inode);
	FUNC3(dentry, inode);

	return 0;
}