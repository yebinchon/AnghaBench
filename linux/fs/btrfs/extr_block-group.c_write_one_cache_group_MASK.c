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
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * slots; struct extent_buffer** nodes; } ;
struct btrfs_fs_info {struct btrfs_root* extent_root; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  item; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int ENOENT ; 
 unsigned long FUNC0 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ *,struct btrfs_path*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,int /*<<< orphan*/ *,unsigned long,int) ; 

__attribute__((used)) static int FUNC5(struct btrfs_trans_handle *trans,
				 struct btrfs_path *path,
				 struct btrfs_block_group_cache *cache)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	int ret;
	struct btrfs_root *extent_root = fs_info->extent_root;
	unsigned long bi;
	struct extent_buffer *leaf;

	ret = FUNC3(trans, extent_root, &cache->key, path, 0, 1);
	if (ret) {
		if (ret > 0)
			ret = -ENOENT;
		goto fail;
	}

	leaf = path->nodes[0];
	bi = FUNC0(leaf, path->slots[0]);
	FUNC4(leaf, &cache->item, bi, sizeof(cache->item));
	FUNC1(leaf);
fail:
	FUNC2(path);
	return ret;

}