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
typedef  int u64 ;
struct btrfs_trans_handle {int /*<<< orphan*/  delayed_ref_updates; int /*<<< orphan*/  new_bgs; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int flags; int last_byte_to_unpin; int needs_free_space; int /*<<< orphan*/  bg_list; int /*<<< orphan*/  space_info; int /*<<< orphan*/  bytes_super; int /*<<< orphan*/  cached; int /*<<< orphan*/  item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTRFS_CACHE_FINISHED ; 
 int /*<<< orphan*/  BTRFS_FIRST_CHUNK_TREE_OBJECTID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_block_group_cache*,int,int) ; 
 int FUNC2 (struct btrfs_fs_info*,struct btrfs_block_group_cache*) ; 
 struct btrfs_block_group_cache* FUNC3 (struct btrfs_fs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_trans_handle*) ; 
 scalar_t__ FUNC12 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_fs_info*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC18 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct btrfs_fs_info*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct btrfs_fs_info*,struct btrfs_block_group_cache*,int) ; 

int FUNC22(struct btrfs_trans_handle *trans, u64 bytes_used,
			   u64 type, u64 chunk_offset, u64 size)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct btrfs_block_group_cache *cache;
	int ret;

	FUNC11(trans);

	cache = FUNC3(fs_info, chunk_offset, size);
	if (!cache)
		return -ENOMEM;

	FUNC10(&cache->item, bytes_used);
	FUNC8(&cache->item,
					     BTRFS_FIRST_CHUNK_TREE_OBJECTID);
	FUNC9(&cache->item, type);

	cache->flags = type;
	cache->last_byte_to_unpin = (u64)-1;
	cache->cached = BTRFS_CACHE_FINISHED;
	cache->needs_free_space = 1;
	ret = FUNC16(cache);
	if (ret) {
		/* We may have excluded something, so call this just in case */
		FUNC5(cache);
		FUNC6(cache);
		return ret;
	}

	FUNC1(cache, chunk_offset, chunk_offset + size);

	FUNC5(cache);

#ifdef CONFIG_BTRFS_DEBUG
	if (btrfs_should_fragment_free_space(cache)) {
		u64 new_bytes_used = size - bytes_used;

		bytes_used += new_bytes_used >> 1;
		fragment_free_space(cache);
	}
#endif
	/*
	 * Ensure the corresponding space_info object is created and
	 * assigned to our block group. We want our bg to be added to the rbtree
	 * with its ->space_info set.
	 */
	cache->space_info = FUNC4(fs_info, cache->flags);
	FUNC0(cache->space_info);

	ret = FUNC2(fs_info, cache);
	if (ret) {
		FUNC7(cache);
		FUNC6(cache);
		return ret;
	}

	/*
	 * Now that our block group has its ->space_info set and is inserted in
	 * the rbtree, update the space info's counters.
	 */
	FUNC21(fs_info, cache, 1);
	FUNC15(fs_info, cache->flags, size, bytes_used,
				cache->bytes_super, &cache->space_info);
	FUNC14(fs_info);

	FUNC18(cache);

	FUNC19(&cache->bg_list, &trans->new_bgs);
	trans->delayed_ref_updates++;
	FUNC13(trans);

	FUNC20(fs_info, type);
	return 0;
}