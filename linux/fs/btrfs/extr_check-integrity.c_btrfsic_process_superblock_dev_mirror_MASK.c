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
typedef  int u64 ;
struct buffer_head {scalar_t__ b_data; } ;
struct btrfsic_state {scalar_t__ metablock_size; scalar_t__ datablock_size; int print_mask; scalar_t__ max_superblock_generation; struct btrfsic_block* latest_superblock; int /*<<< orphan*/  block_hashtable; int /*<<< orphan*/  all_blocks_list; struct btrfs_fs_info* fs_info; } ;
struct btrfsic_dev_state {int /*<<< orphan*/  name; } ;
struct btrfsic_block_link {int dummy; } ;
struct btrfsic_block_data_ctx {int dummy; } ;
struct btrfs_disk_key {scalar_t__ offset; int /*<<< orphan*/  type; } ;
struct btrfsic_block {int dev_bytenr; int logical_bytenr; int is_metadata; int is_superblock; int is_iodone; int mirror_num; scalar_t__ generation; struct btrfs_disk_key disk_key; int /*<<< orphan*/  all_blocks_node; scalar_t__ never_written; struct btrfsic_dev_state* dev_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  uuid; } ;
struct btrfs_super_block {TYPE_1__ dev_item; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_device {scalar_t__ commit_total_bytes; int /*<<< orphan*/  name; int /*<<< orphan*/  uuid; struct block_device* bdev; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ BTRFSIC_GENERATION_UNKNOWN ; 
 int BTRFSIC_PRINT_MASK_INITIAL_ALL_TREES ; 
 int BTRFSIC_PRINT_MASK_NUM_COPIES ; 
 int BTRFSIC_PRINT_MASK_SUPERBLOCK_WRITE ; 
 int BTRFS_BDEV_BLOCKSIZE ; 
 int /*<<< orphan*/  BTRFS_CHUNK_TREE_OBJECTID ; 
 scalar_t__ BTRFS_MAGIC ; 
 int /*<<< orphan*/  BTRFS_ROOT_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_ROOT_TREE_OBJECTID ; 
 scalar_t__ BTRFS_SUPER_INFO_SIZE ; 
 int /*<<< orphan*/  BTRFS_TREE_LOG_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_UUID_SIZE ; 
 struct buffer_head* FUNC0 (struct block_device* const,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,char*,struct block_device* const,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct btrfs_fs_info*,int,scalar_t__) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_disk_key*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btrfs_super_block*) ; 
 int FUNC7 (struct btrfs_super_block*) ; 
 scalar_t__ FUNC8 (struct btrfs_super_block*) ; 
 int FUNC9 (struct btrfs_super_block*) ; 
 scalar_t__ FUNC10 (struct btrfs_super_block*) ; 
 scalar_t__ FUNC11 (struct btrfs_super_block*) ; 
 int FUNC12 (struct btrfs_super_block*) ; 
 scalar_t__ FUNC13 (struct btrfs_super_block*) ; 
 struct btrfsic_block* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct btrfsic_block*,int /*<<< orphan*/ *) ; 
 struct btrfsic_block* FUNC16 (struct block_device* const,int,int /*<<< orphan*/ *) ; 
 struct btrfsic_block_link* FUNC17 (struct btrfsic_state*,struct btrfsic_block_data_ctx*,struct btrfsic_block*,struct btrfsic_block*,scalar_t__) ; 
 struct btrfsic_block* FUNC18 (struct btrfsic_state*,struct btrfsic_block_data_ctx*,char const*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct btrfsic_state*,struct btrfsic_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct btrfsic_state*,int,scalar_t__,struct btrfsic_block_data_ctx*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct btrfsic_block_data_ctx*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct btrfs_super_block*,struct btrfs_super_block*,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(
		struct btrfsic_state *state,
		struct btrfsic_dev_state *dev_state,
		struct btrfs_device *device,
		int superblock_mirror_num,
		struct btrfsic_dev_state **selected_dev_state,
		struct btrfs_super_block *selected_super)
{
	struct btrfs_fs_info *fs_info = state->fs_info;
	struct btrfs_super_block *super_tmp;
	u64 dev_bytenr;
	struct buffer_head *bh;
	struct btrfsic_block *superblock_tmp;
	int pass;
	struct block_device *const superblock_bdev = device->bdev;

	/* super block bytenr is always the unmapped device bytenr */
	dev_bytenr = FUNC4(superblock_mirror_num);
	if (dev_bytenr + BTRFS_SUPER_INFO_SIZE > device->commit_total_bytes)
		return -1;
	bh = FUNC0(superblock_bdev, dev_bytenr / BTRFS_BDEV_BLOCKSIZE,
		     BTRFS_SUPER_INFO_SIZE);
	if (NULL == bh)
		return -1;
	super_tmp = (struct btrfs_super_block *)
	    (bh->b_data + (dev_bytenr & (BTRFS_BDEV_BLOCKSIZE - 1)));

	if (FUNC6(super_tmp) != dev_bytenr ||
	    FUNC10(super_tmp) != BTRFS_MAGIC ||
	    FUNC23(device->uuid, super_tmp->dev_item.uuid, BTRFS_UUID_SIZE) ||
	    FUNC11(super_tmp) != state->metablock_size ||
	    FUNC13(super_tmp) != state->datablock_size) {
		FUNC1(bh);
		return 0;
	}

	superblock_tmp =
	    FUNC16(superblock_bdev,
					   dev_bytenr,
					   &state->block_hashtable);
	if (NULL == superblock_tmp) {
		superblock_tmp = FUNC14();
		if (NULL == superblock_tmp) {
			FUNC25("btrfsic: error, kmalloc failed!\n");
			FUNC1(bh);
			return -1;
		}
		/* for superblock, only the dev_bytenr makes sense */
		superblock_tmp->dev_bytenr = dev_bytenr;
		superblock_tmp->dev_state = dev_state;
		superblock_tmp->logical_bytenr = dev_bytenr;
		superblock_tmp->generation = FUNC8(super_tmp);
		superblock_tmp->is_metadata = 1;
		superblock_tmp->is_superblock = 1;
		superblock_tmp->is_iodone = 1;
		superblock_tmp->never_written = 0;
		superblock_tmp->mirror_num = 1 + superblock_mirror_num;
		if (state->print_mask & BTRFSIC_PRINT_MASK_SUPERBLOCK_WRITE)
			FUNC2(fs_info,
				"new initial S-block (bdev %p, %s) @%llu (%s/%llu/%d)",
				     superblock_bdev,
				     FUNC26(device->name), dev_bytenr,
				     dev_state->name, dev_bytenr,
				     superblock_mirror_num);
		FUNC22(&superblock_tmp->all_blocks_node,
			 &state->all_blocks_list);
		FUNC15(superblock_tmp,
					    &state->block_hashtable);
	}

	/* select the one with the highest generation field */
	if (FUNC8(super_tmp) >
	    state->max_superblock_generation ||
	    0 == state->max_superblock_generation) {
		FUNC24(selected_super, super_tmp, sizeof(*selected_super));
		*selected_dev_state = dev_state;
		state->max_superblock_generation =
		    FUNC8(super_tmp);
		state->latest_superblock = superblock_tmp;
	}

	for (pass = 0; pass < 3; pass++) {
		u64 next_bytenr;
		int num_copies;
		int mirror_num;
		const char *additional_string = NULL;
		struct btrfs_disk_key tmp_disk_key;

		tmp_disk_key.type = BTRFS_ROOT_ITEM_KEY;
		tmp_disk_key.offset = 0;
		switch (pass) {
		case 0:
			FUNC5(&tmp_disk_key,
						    BTRFS_ROOT_TREE_OBJECTID);
			additional_string = "initial root ";
			next_bytenr = FUNC12(super_tmp);
			break;
		case 1:
			FUNC5(&tmp_disk_key,
						    BTRFS_CHUNK_TREE_OBJECTID);
			additional_string = "initial chunk ";
			next_bytenr = FUNC7(super_tmp);
			break;
		case 2:
			FUNC5(&tmp_disk_key,
						    BTRFS_TREE_LOG_OBJECTID);
			additional_string = "initial log ";
			next_bytenr = FUNC9(super_tmp);
			if (0 == next_bytenr)
				continue;
			break;
		}

		num_copies = FUNC3(fs_info, next_bytenr,
					      state->metablock_size);
		if (state->print_mask & BTRFSIC_PRINT_MASK_NUM_COPIES)
			FUNC25("num_copies(log_bytenr=%llu) = %d\n",
			       next_bytenr, num_copies);
		for (mirror_num = 1; mirror_num <= num_copies; mirror_num++) {
			struct btrfsic_block *next_block;
			struct btrfsic_block_data_ctx tmp_next_block_ctx;
			struct btrfsic_block_link *l;

			if (FUNC20(state, next_bytenr,
					      state->metablock_size,
					      &tmp_next_block_ctx,
					      mirror_num)) {
				FUNC25("btrfsic: btrfsic_map_block(bytenr @%llu, mirror %d) failed!\n",
				       next_bytenr, mirror_num);
				FUNC1(bh);
				return -1;
			}

			next_block = FUNC18(
					state, &tmp_next_block_ctx,
					additional_string, 1, 1, 0,
					mirror_num, NULL);
			if (NULL == next_block) {
				FUNC21(&tmp_next_block_ctx);
				FUNC1(bh);
				return -1;
			}

			next_block->disk_key = tmp_disk_key;
			next_block->generation = BTRFSIC_GENERATION_UNKNOWN;
			l = FUNC17(
					state, &tmp_next_block_ctx,
					next_block, superblock_tmp,
					BTRFSIC_GENERATION_UNKNOWN);
			FUNC21(&tmp_next_block_ctx);
			if (NULL == l) {
				FUNC1(bh);
				return -1;
			}
		}
	}
	if (state->print_mask & BTRFSIC_PRINT_MASK_INITIAL_ALL_TREES)
		FUNC19(state, superblock_tmp, 0);

	FUNC1(bh);
	return 0;
}