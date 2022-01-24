#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct btrfsic_state {scalar_t__ max_superblock_generation; int print_mask; struct btrfsic_block* latest_superblock; struct btrfs_fs_info* fs_info; } ;
struct btrfsic_block_link {int dummy; } ;
struct btrfsic_block_data_ctx {int dummy; } ;
struct btrfs_disk_key {int /*<<< orphan*/  member_0; } ;
struct btrfsic_block {scalar_t__ generation; struct btrfs_disk_key disk_key; int /*<<< orphan*/  mirror_num; int /*<<< orphan*/  dev_bytenr; TYPE_1__* dev_state; int /*<<< orphan*/  logical_bytenr; } ;
struct btrfs_super_block {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BTRFSIC_GENERATION_UNKNOWN ; 
 int BTRFSIC_PRINT_MASK_NUM_COPIES ; 
 int BTRFSIC_PRINT_MASK_ROOT_CHUNK_LOG_TREE_LOCATION ; 
 int BTRFSIC_PRINT_MASK_SUPERBLOCK_WRITE ; 
 int BTRFSIC_PRINT_MASK_VERBOSE ; 
 int /*<<< orphan*/  BTRFS_CHUNK_TREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_ROOT_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_ROOT_TREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_SUPER_INFO_SIZE ; 
 int /*<<< orphan*/  BTRFS_TREE_LOG_OBJECTID ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_disk_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_super_block* const) ; 
 void* FUNC4 (struct btrfs_super_block* const) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_super_block* const) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_super_block* const) ; 
 struct btrfsic_block_link* FUNC7 (struct btrfsic_state*,struct btrfsic_block_data_ctx*,struct btrfsic_block*,struct btrfsic_block* const,scalar_t__) ; 
 struct btrfsic_block* FUNC8 (struct btrfsic_state*,struct btrfsic_block_data_ctx*,char const*,int,int /*<<< orphan*/ ,int,int,int*) ; 
 int FUNC9 (struct btrfsic_state*,struct btrfsic_block* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfsic_state*) ; 
 int FUNC11 (struct btrfsic_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfsic_block_data_ctx*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfsic_block_data_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static int FUNC14(
		struct btrfsic_state *state,
		struct btrfsic_block *const superblock,
		struct btrfs_super_block *const super_hdr)
{
	struct btrfs_fs_info *fs_info = state->fs_info;
	int pass;

	superblock->generation = FUNC4(super_hdr);
	if (!(superblock->generation > state->max_superblock_generation ||
	      0 == state->max_superblock_generation)) {
		if (state->print_mask & BTRFSIC_PRINT_MASK_SUPERBLOCK_WRITE)
			FUNC13("btrfsic: superblock @%llu (%s/%llu/%d) with old gen %llu <= %llu\n",
			       superblock->logical_bytenr,
			       superblock->dev_state->name,
			       superblock->dev_bytenr, superblock->mirror_num,
			       FUNC4(super_hdr),
			       state->max_superblock_generation);
	} else {
		if (state->print_mask & BTRFSIC_PRINT_MASK_SUPERBLOCK_WRITE)
			FUNC13("btrfsic: got new superblock @%llu (%s/%llu/%d) with new gen %llu > %llu\n",
			       superblock->logical_bytenr,
			       superblock->dev_state->name,
			       superblock->dev_bytenr, superblock->mirror_num,
			       FUNC4(super_hdr),
			       state->max_superblock_generation);

		state->max_superblock_generation =
		    FUNC4(super_hdr);
		state->latest_superblock = superblock;
	}

	for (pass = 0; pass < 3; pass++) {
		int ret;
		u64 next_bytenr;
		struct btrfsic_block *next_block;
		struct btrfsic_block_data_ctx tmp_next_block_ctx;
		struct btrfsic_block_link *l;
		int num_copies;
		int mirror_num;
		const char *additional_string = NULL;
		struct btrfs_disk_key tmp_disk_key = {0};

		FUNC2(&tmp_disk_key,
					    BTRFS_ROOT_ITEM_KEY);
		FUNC2(&tmp_disk_key, 0);

		switch (pass) {
		case 0:
			FUNC2(&tmp_disk_key,
						    BTRFS_ROOT_TREE_OBJECTID);
			additional_string = "root ";
			next_bytenr = FUNC6(super_hdr);
			if (state->print_mask &
			    BTRFSIC_PRINT_MASK_ROOT_CHUNK_LOG_TREE_LOCATION)
				FUNC13("root@%llu\n", next_bytenr);
			break;
		case 1:
			FUNC2(&tmp_disk_key,
						    BTRFS_CHUNK_TREE_OBJECTID);
			additional_string = "chunk ";
			next_bytenr = FUNC3(super_hdr);
			if (state->print_mask &
			    BTRFSIC_PRINT_MASK_ROOT_CHUNK_LOG_TREE_LOCATION)
				FUNC13("chunk@%llu\n", next_bytenr);
			break;
		case 2:
			FUNC2(&tmp_disk_key,
						    BTRFS_TREE_LOG_OBJECTID);
			additional_string = "log ";
			next_bytenr = FUNC5(super_hdr);
			if (0 == next_bytenr)
				continue;
			if (state->print_mask &
			    BTRFSIC_PRINT_MASK_ROOT_CHUNK_LOG_TREE_LOCATION)
				FUNC13("log@%llu\n", next_bytenr);
			break;
		}

		num_copies = FUNC1(fs_info, next_bytenr,
					      BTRFS_SUPER_INFO_SIZE);
		if (state->print_mask & BTRFSIC_PRINT_MASK_NUM_COPIES)
			FUNC13("num_copies(log_bytenr=%llu) = %d\n",
			       next_bytenr, num_copies);
		for (mirror_num = 1; mirror_num <= num_copies; mirror_num++) {
			int was_created;

			if (state->print_mask & BTRFSIC_PRINT_MASK_VERBOSE)
				FUNC13("btrfsic_process_written_superblock(mirror_num=%d)\n", mirror_num);
			ret = FUNC11(state, next_bytenr,
						BTRFS_SUPER_INFO_SIZE,
						&tmp_next_block_ctx,
						mirror_num);
			if (ret) {
				FUNC13("btrfsic: btrfsic_map_block(@%llu, mirror=%d) failed!\n",
				       next_bytenr, mirror_num);
				return -1;
			}

			next_block = FUNC8(
					state,
					&tmp_next_block_ctx,
					additional_string,
					1, 0, 1,
					mirror_num,
					&was_created);
			if (NULL == next_block) {
				FUNC13("btrfsic: error, kmalloc failed!\n");
				FUNC12(&tmp_next_block_ctx);
				return -1;
			}

			next_block->disk_key = tmp_disk_key;
			if (was_created)
				next_block->generation =
				    BTRFSIC_GENERATION_UNKNOWN;
			l = FUNC7(
					state,
					&tmp_next_block_ctx,
					next_block,
					superblock,
					BTRFSIC_GENERATION_UNKNOWN);
			FUNC12(&tmp_next_block_ctx);
			if (NULL == l)
				return -1;
		}
	}

	if (FUNC0(-1 == FUNC9(state, superblock, 0)))
		FUNC10(state);

	return 0;
}