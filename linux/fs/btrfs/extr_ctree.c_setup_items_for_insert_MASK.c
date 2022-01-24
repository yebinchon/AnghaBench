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
struct extent_buffer {int dummy; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_map_token {int dummy; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_item {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 int BTRFS_LEAF_DATA_OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_disk_key*,struct btrfs_key const*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,char*,int,unsigned int,...) ; 
 int FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_map_token*,struct extent_buffer*) ; 
 unsigned int FUNC5 (struct extent_buffer*,int) ; 
 struct btrfs_item* FUNC6 (int) ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,struct btrfs_disk_key*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*,struct btrfs_item*,int,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*,struct btrfs_item*,int,struct btrfs_map_token*) ; 
 int FUNC15 (struct extent_buffer*,struct btrfs_item*,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_path*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_path*,struct btrfs_disk_key*,int) ; 
 unsigned int FUNC18 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC19 (struct extent_buffer*,int,int,unsigned int) ; 

void FUNC20(struct btrfs_root *root, struct btrfs_path *path,
			    const struct btrfs_key *cpu_key, u32 *data_size,
			    u32 total_data, u32 total_size, int nr)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_item *item;
	int i;
	u32 nritems;
	unsigned int data_end;
	struct btrfs_disk_key disk_key;
	struct extent_buffer *leaf;
	int slot;
	struct btrfs_map_token token;

	if (path->slots[0] == 0) {
		FUNC1(&disk_key, cpu_key);
		FUNC17(path, &disk_key, 1);
	}
	FUNC16(path, 1);

	leaf = path->nodes[0];
	slot = path->slots[0];

	nritems = FUNC3(leaf);
	data_end = FUNC18(leaf);

	if (FUNC8(leaf) < total_size) {
		FUNC10(leaf);
		FUNC2(fs_info, "not enough freespace need %u have %d",
			   total_size, FUNC8(leaf));
		FUNC0();
	}

	FUNC4(&token, leaf);
	if (slot != nritems) {
		unsigned int old_data = FUNC5(leaf, slot);

		if (old_data < data_end) {
			FUNC10(leaf);
			FUNC2(fs_info, "slot %d old_data %d data_end %d",
				   slot, old_data, data_end);
			FUNC0();
		}
		/*
		 * item0..itemN ... dataN.offset..dataN.size .. data0.size
		 */
		/* first correct the data pointers */
		for (i = slot; i < nritems; i++) {
			u32 ioff;

			item = FUNC6(i);
			ioff = FUNC15(leaf, item, &token);
			FUNC13(leaf, item,
						    ioff - total_data, &token);
		}
		/* shift the items */
		FUNC19(leaf, FUNC7(slot + nr),
			      FUNC7(slot),
			      (nritems - slot) * sizeof(struct btrfs_item));

		/* shift the data */
		FUNC19(leaf, BTRFS_LEAF_DATA_OFFSET +
			      data_end - total_data, BTRFS_LEAF_DATA_OFFSET +
			      data_end, old_data - data_end);
		data_end = old_data;
	}

	/* setup the item for the new data */
	for (i = 0; i < nr; i++) {
		FUNC1(&disk_key, cpu_key + i);
		FUNC12(leaf, &disk_key, slot + i);
		item = FUNC6(slot + i);
		FUNC13(leaf, item,
					    data_end - data_size[i], &token);
		data_end -= data_size[i];
		FUNC14(leaf, item, data_size[i], &token);
	}

	FUNC11(leaf, nritems + nr);
	FUNC9(leaf);

	if (FUNC8(leaf) < 0) {
		FUNC10(leaf);
		FUNC0();
	}
}