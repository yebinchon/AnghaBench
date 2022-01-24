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
typedef  scalar_t__ u32 ;
struct extent_buffer {int /*<<< orphan*/  fs_info; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_map_token {int dummy; } ;
struct btrfs_item {int dummy; } ;

/* Variables and functions */
 scalar_t__ BTRFS_LEAF_DATA_OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 scalar_t__ FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_map_token*,struct extent_buffer*) ; 
 unsigned int FUNC5 (struct extent_buffer*,int) ; 
 struct btrfs_item* FUNC6 (int) ; 
 unsigned int FUNC7 (struct extent_buffer*,int) ; 
 scalar_t__ FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,struct btrfs_item*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,struct btrfs_item*,scalar_t__,struct btrfs_map_token*) ; 
 scalar_t__ FUNC13 (struct extent_buffer*,struct btrfs_item*,struct btrfs_map_token*) ; 
 unsigned int FUNC14 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*,scalar_t__,scalar_t__,unsigned int) ; 

void FUNC16(struct btrfs_path *path, u32 data_size)
{
	int slot;
	struct extent_buffer *leaf;
	struct btrfs_item *item;
	u32 nritems;
	unsigned int data_end;
	unsigned int old_data;
	unsigned int old_size;
	int i;
	struct btrfs_map_token token;

	leaf = path->nodes[0];

	nritems = FUNC3(leaf);
	data_end = FUNC14(leaf);

	if (FUNC8(leaf) < data_size) {
		FUNC10(leaf);
		FUNC0();
	}
	slot = path->slots[0];
	old_data = FUNC5(leaf, slot);

	FUNC1(slot < 0);
	if (slot >= nritems) {
		FUNC10(leaf);
		FUNC2(leaf->fs_info, "slot %d too large, nritems %d",
			   slot, nritems);
		FUNC0();
	}

	/*
	 * item0..itemN ... dataN.offset..dataN.size .. data0.size
	 */
	/* first correct the data pointers */
	FUNC4(&token, leaf);
	for (i = slot; i < nritems; i++) {
		u32 ioff;
		item = FUNC6(i);

		ioff = FUNC13(leaf, item, &token);
		FUNC12(leaf, item,
					    ioff - data_size, &token);
	}

	/* shift the data */
	FUNC15(leaf, BTRFS_LEAF_DATA_OFFSET +
		      data_end - data_size, BTRFS_LEAF_DATA_OFFSET +
		      data_end, old_data - data_end);

	data_end = old_data;
	old_size = FUNC7(leaf, slot);
	item = FUNC6(slot);
	FUNC11(leaf, item, old_size + data_size);
	FUNC9(leaf);

	if (FUNC8(leaf) < 0) {
		FUNC10(leaf);
		FUNC0();
	}
}