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
typedef  int u32 ;
struct free_space_extent {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * nodes; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_free_space_info {int dummy; } ;
struct btrfs_block_group_cache {int dummy; } ;

/* Variables and functions */
 int BTRFS_FREE_SPACE_USING_BITMAPS ; 
 scalar_t__ FUNC0 (struct btrfs_free_space_info*) ; 
 int FUNC1 (struct btrfs_free_space_info*) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_fs_info*,struct btrfs_block_group_cache*,struct btrfs_path*,struct free_space_extent const* const,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct btrfs_free_space_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 int FUNC5 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*) ; 
 struct btrfs_free_space_info* FUNC7 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct btrfs_trans_handle *trans,
				    struct btrfs_fs_info *fs_info,
				    struct btrfs_block_group_cache *cache,
				    struct btrfs_path *path,
				    const struct free_space_extent * const extents,
				    unsigned int num_extents)
{
	struct btrfs_free_space_info *info;
	u32 flags;
	int ret;

	info = FUNC7(trans, cache, path, 0);
	if (FUNC0(info)) {
		FUNC8("could not find free space info");
		FUNC4(path);
		return FUNC1(info);
	}
	flags = FUNC3(path->nodes[0], info);
	FUNC4(path);

	ret = FUNC2(trans, fs_info, cache, path, extents,
					 num_extents);
	if (ret)
		return ret;

	/* Flip it to the other format and check that for good measure. */
	if (flags & BTRFS_FREE_SPACE_USING_BITMAPS) {
		ret = FUNC6(trans, cache, path);
		if (ret) {
			FUNC8("could not convert to extents");
			return ret;
		}
	} else {
		ret = FUNC5(trans, cache, path);
		if (ret) {
			FUNC8("could not convert to bitmaps");
			return ret;
		}
	}
	return FUNC2(trans, fs_info, cache, path, extents,
					  num_extents);
}