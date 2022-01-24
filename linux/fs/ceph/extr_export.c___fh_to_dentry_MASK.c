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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_nlink; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC6(struct super_block *sb, u64 ino)
{
	struct inode *inode = FUNC3(sb, ino);
	if (FUNC2(inode))
		return FUNC0(inode);
	if (inode->i_nlink == 0) {
		FUNC5(inode);
		return FUNC1(-ESTALE);
	}
	return FUNC4(inode);
}