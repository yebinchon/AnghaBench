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
struct affs_inode_info {struct inode vfs_inode; scalar_t__ i_pa_cnt; int /*<<< orphan*/ * i_ext_bh; int /*<<< orphan*/ * i_lc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  affs_inode_cachep ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int) ; 
 struct affs_inode_info* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inode *FUNC2(struct super_block *sb)
{
	struct affs_inode_info *i;

	i = FUNC1(affs_inode_cachep, GFP_KERNEL);
	if (!i)
		return NULL;

	FUNC0(&i->vfs_inode, 1);
	i->i_lc = NULL;
	i->i_ext_bh = NULL;
	i->i_pa_cnt = 0;

	return &i->vfs_inode;
}