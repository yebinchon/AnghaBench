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
struct super_block {int /*<<< orphan*/  s_root; int /*<<< orphan*/ * s_op; scalar_t__ s_time_max; scalar_t__ s_time_min; int /*<<< orphan*/  s_flags; } ;
struct inode {int dummy; } ;
struct cramfs_inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  SB_RDONLY ; 
 int /*<<< orphan*/  cramfs_ops ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct super_block*,struct cramfs_inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb,
				 struct cramfs_inode *cramfs_root)
{
	struct inode *root;

	/* Set it all up.. */
	sb->s_flags |= SB_RDONLY;
	sb->s_time_min = 0;
	sb->s_time_max = 0;
	sb->s_op = &cramfs_ops;
	root = FUNC3(sb, cramfs_root, 0);
	if (FUNC0(root))
		return FUNC1(root);
	sb->s_root = FUNC2(root);
	if (!sb->s_root)
		return -ENOMEM;
	return 0;
}