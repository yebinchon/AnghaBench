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
struct inode {scalar_t__ i_sb; int i_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 int /*<<< orphan*/  EXDEV ; 
 int I_NEW ; 
 int /*<<< orphan*/  ecryptfs_inode_set ; 
 int /*<<< orphan*/  ecryptfs_inode_test ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 struct inode* FUNC2 (struct super_block*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

__attribute__((used)) static struct inode *FUNC5(struct inode *lower_inode,
					  struct super_block *sb)
{
	struct inode *inode;

	if (lower_inode->i_sb != FUNC1(sb))
		return FUNC0(-EXDEV);
	if (!FUNC3(lower_inode))
		return FUNC0(-ESTALE);
	inode = FUNC2(sb, (unsigned long)lower_inode,
			     ecryptfs_inode_test, ecryptfs_inode_set,
			     lower_inode);
	if (!inode) {
		FUNC4(lower_inode);
		return FUNC0(-EACCES);
	}
	if (!(inode->i_state & I_NEW))
		FUNC4(lower_inode);

	return inode;
}