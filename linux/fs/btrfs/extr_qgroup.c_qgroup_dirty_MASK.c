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
struct btrfs_qgroup {int /*<<< orphan*/  dirty; } ;
struct btrfs_fs_info {int /*<<< orphan*/  dirty_qgroups; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct btrfs_fs_info *fs_info,
			 struct btrfs_qgroup *qgroup)
{
	if (FUNC1(&qgroup->dirty))
		FUNC0(&qgroup->dirty, &fs_info->dirty_qgroups);
}