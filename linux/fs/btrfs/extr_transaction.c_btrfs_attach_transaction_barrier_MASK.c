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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_RESERVE_NO_FLUSH ; 
 int /*<<< orphan*/  ENOENT ; 
 struct btrfs_trans_handle* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANS_ATTACH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btrfs_trans_handle* FUNC2 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

struct btrfs_trans_handle *
FUNC3(struct btrfs_root *root)
{
	struct btrfs_trans_handle *trans;

	trans = FUNC2(root, 0, TRANS_ATTACH,
				  BTRFS_RESERVE_NO_FLUSH, true);
	if (trans == FUNC0(-ENOENT))
		FUNC1(root->fs_info, 0);

	return trans;
}