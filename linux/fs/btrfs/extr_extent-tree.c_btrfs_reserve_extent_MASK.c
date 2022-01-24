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
struct btrfs_space_info {int dummy; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_key {scalar_t__ offset; int /*<<< orphan*/  objectid; } ;
struct btrfs_fs_info {scalar_t__ sectorsize; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  ENOSPC_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,struct btrfs_space_info*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,char*,scalar_t__,scalar_t__) ; 
 struct btrfs_space_info* FUNC4 (struct btrfs_fs_info*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btrfs_fs_info*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct btrfs_key*,scalar_t__,int) ; 
 scalar_t__ FUNC7 (struct btrfs_root*,int) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 

int FUNC11(struct btrfs_root *root, u64 ram_bytes,
			 u64 num_bytes, u64 min_alloc_size,
			 u64 empty_size, u64 hint_byte,
			 struct btrfs_key *ins, int is_data, int delalloc)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	bool final_tried = num_bytes == min_alloc_size;
	u64 flags;
	int ret;

	flags = FUNC7(root, is_data);
again:
	FUNC0(num_bytes < fs_info->sectorsize);
	ret = FUNC6(fs_info, ram_bytes, num_bytes, empty_size,
			       hint_byte, ins, flags, delalloc);
	if (!ret && !is_data) {
		FUNC1(fs_info, ins->objectid);
	} else if (ret == -ENOSPC) {
		if (!final_tried && ins->offset) {
			num_bytes = FUNC9(num_bytes >> 1, ins->offset);
			num_bytes = FUNC10(num_bytes,
					       fs_info->sectorsize);
			num_bytes = FUNC8(num_bytes, min_alloc_size);
			ram_bytes = num_bytes;
			if (num_bytes == min_alloc_size)
				final_tried = true;
			goto again;
		} else if (FUNC5(fs_info, ENOSPC_DEBUG)) {
			struct btrfs_space_info *sinfo;

			sinfo = FUNC4(fs_info, flags);
			FUNC3(fs_info,
				  "allocation failed flags %llu, wanted %llu",
				  flags, num_bytes);
			if (sinfo)
				FUNC2(fs_info, sinfo,
						      num_bytes, 1);
		}
	}

	return ret;
}