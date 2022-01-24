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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 int FUNC1 (struct btrfs_path*,int,int,struct extent_buffer*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,struct extent_buffer*,int,struct extent_buffer**) ; 
 int FUNC4 (struct extent_buffer*) ; 
 int FUNC5 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC6 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*) ; 

__attribute__((used)) static int FUNC11(struct btrfs_trans_handle *trans, struct btrfs_root
			   *root, struct btrfs_path *path,
			   int min_data_size, int data_size,
			   int empty, u32 min_slot)
{
	struct extent_buffer *left = path->nodes[0];
	struct extent_buffer *right;
	struct extent_buffer *upper;
	int slot;
	int free_space;
	u32 left_nritems;
	int ret;

	if (!path->nodes[1])
		return 1;

	slot = path->slots[1];
	upper = path->nodes[1];
	if (slot >= FUNC4(upper) - 1)
		return 1;

	FUNC2(path->nodes[1]);

	right = FUNC6(upper, slot + 1);
	/*
	 * slot + 1 is not valid or we fail to read the right node,
	 * no big deal, just return.
	 */
	if (FUNC0(right))
		return 1;

	FUNC8(right);
	FUNC7(right);

	free_space = FUNC5(right);
	if (free_space < data_size)
		goto out_unlock;

	/* cow and double check */
	ret = FUNC3(trans, root, right, upper,
			      slot + 1, &right);
	if (ret)
		goto out_unlock;

	free_space = FUNC5(right);
	if (free_space < data_size)
		goto out_unlock;

	left_nritems = FUNC4(left);
	if (left_nritems == 0)
		goto out_unlock;

	if (path->slots[0] == left_nritems && !empty) {
		/* Key greater than all keys in the leaf, right neighbor has
		 * enough room for it and we're not emptying our leaf to delete
		 * it, therefore use right neighbor to insert the new item and
		 * no need to touch/dirty our left leaf. */
		FUNC9(left);
		FUNC10(left);
		path->nodes[0] = right;
		path->slots[0] = 0;
		path->slots[1]++;
		return 0;
	}

	return FUNC1(path, min_data_size, empty,
				right, free_space, left_nritems, min_slot);
out_unlock:
	FUNC9(right);
	FUNC10(right);
	return 1;
}