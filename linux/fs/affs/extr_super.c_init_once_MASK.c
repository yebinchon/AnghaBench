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
struct affs_inode_info {int /*<<< orphan*/  vfs_inode; int /*<<< orphan*/  i_ext_lock; int /*<<< orphan*/  i_link_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(void *foo)
{
	struct affs_inode_info *ei = (struct affs_inode_info *) foo;

	FUNC1(&ei->i_link_lock, 1);
	FUNC1(&ei->i_ext_lock, 1);
	FUNC0(&ei->vfs_inode);
}