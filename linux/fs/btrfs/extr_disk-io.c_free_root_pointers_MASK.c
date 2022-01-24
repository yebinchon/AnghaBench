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
struct btrfs_fs_info {int /*<<< orphan*/  free_space_root; int /*<<< orphan*/  chunk_root; int /*<<< orphan*/  uuid_root; int /*<<< orphan*/  quota_root; int /*<<< orphan*/  csum_root; int /*<<< orphan*/  extent_root; int /*<<< orphan*/  dev_root; int /*<<< orphan*/  tree_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct btrfs_fs_info *info, int chunk_root)
{
	FUNC0(info->tree_root);

	FUNC0(info->dev_root);
	FUNC0(info->extent_root);
	FUNC0(info->csum_root);
	FUNC0(info->quota_root);
	FUNC0(info->uuid_root);
	if (chunk_root)
		FUNC0(info->chunk_root);
	FUNC0(info->free_space_root);
}