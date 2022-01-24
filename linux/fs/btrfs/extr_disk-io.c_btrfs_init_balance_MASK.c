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
struct btrfs_fs_info {int /*<<< orphan*/  balance_wait_q; int /*<<< orphan*/ * balance_ctl; int /*<<< orphan*/  balance_cancel_req; int /*<<< orphan*/  balance_pause_req; int /*<<< orphan*/  balance_mutex; int /*<<< orphan*/  balance_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct btrfs_fs_info *fs_info)
{
	FUNC3(&fs_info->balance_lock);
	FUNC2(&fs_info->balance_mutex);
	FUNC0(&fs_info->balance_pause_req, 0);
	FUNC0(&fs_info->balance_cancel_req, 0);
	fs_info->balance_ctl = NULL;
	FUNC1(&fs_info->balance_wait_q);
}