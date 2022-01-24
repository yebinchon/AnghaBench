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
struct inode {int i_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int I_NEW ; 
 struct inode* FUNC1 (struct inode*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

struct inode *FUNC3(struct inode *lower_inode,
				 struct super_block *sb)
{
	struct inode *inode = FUNC1(lower_inode, sb);

	if (!FUNC0(inode) && (inode->i_state & I_NEW))
		FUNC2(inode);

	return inode;
}