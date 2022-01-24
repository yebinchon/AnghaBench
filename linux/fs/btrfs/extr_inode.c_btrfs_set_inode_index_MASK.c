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
typedef  scalar_t__ u64 ;
struct btrfs_inode {scalar_t__ index_cnt; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_inode*) ; 
 int FUNC1 (struct btrfs_inode*) ; 

int FUNC2(struct btrfs_inode *dir, u64 *index)
{
	int ret = 0;

	if (dir->index_cnt == (u64)-1) {
		ret = FUNC0(dir);
		if (ret) {
			ret = FUNC1(dir);
			if (ret)
				return ret;
		}
	}

	*index = dir->index_cnt;
	dir->index_cnt++;

	return ret;
}