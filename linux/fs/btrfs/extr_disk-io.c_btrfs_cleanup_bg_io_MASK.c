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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_3__ {struct inode* inode; } ;
struct btrfs_block_group_cache {TYPE_1__ io_ctl; } ;
struct TYPE_4__ {scalar_t__ generation; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

__attribute__((used)) static void FUNC4(struct btrfs_block_group_cache *cache)
{
	struct inode *inode;

	inode = cache->io_ctl.inode;
	if (inode) {
		FUNC2(inode->i_mapping);
		FUNC0(inode)->generation = 0;
		cache->io_ctl.inode = NULL;
		FUNC3(inode);
	}
	FUNC1(cache);
}