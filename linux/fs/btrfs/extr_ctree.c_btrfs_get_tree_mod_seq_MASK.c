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
struct seq_list {scalar_t__ seq; int /*<<< orphan*/  list; } ;
struct btrfs_fs_info {int /*<<< orphan*/  tree_mod_log_lock; int /*<<< orphan*/  tree_mod_seq_lock; int /*<<< orphan*/  tree_mod_seq_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

u64 FUNC6(struct btrfs_fs_info *fs_info,
			   struct seq_list *elem)
{
	FUNC4(&fs_info->tree_mod_log_lock);
	FUNC2(&fs_info->tree_mod_seq_lock);
	if (!elem->seq) {
		elem->seq = FUNC0(fs_info);
		FUNC1(&elem->list, &fs_info->tree_mod_seq_list);
	}
	FUNC3(&fs_info->tree_mod_seq_lock);
	FUNC5(&fs_info->tree_mod_log_lock);

	return elem->seq;
}