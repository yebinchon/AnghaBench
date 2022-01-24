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
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 int FUNC1 (struct btrfs_path*,int,int,struct extent_buffer*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,struct extent_buffer*,int,struct extent_buffer**) ; 
 scalar_t__ FUNC4 (struct extent_buffer*) ; 
 int FUNC5 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC6 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*) ; 

__attribute__((used)) static int FUNC11(struct btrfs_trans_handle *trans, struct btrfs_root
			  *root, struct btrfs_path *path, int min_data_size,
			  int data_size, int empty, u32 max_slot)
{
	struct extent_buffer *right = path->nodes[0];
	struct extent_buffer *left;
	int slot;
	int free_space;
	u32 right_nritems;
	int ret = 0;

	slot = path->slots[1];
	if (slot == 0)
		return 1;
	if (!path->nodes[1])
		return 1;

	right_nritems = FUNC4(right);
	if (right_nritems == 0)
		return 1;

	FUNC2(path->nodes[1]);

	left = FUNC6(path->nodes[1], slot - 1);
	/*
	 * slot - 1 is not valid or we fail to read the left node,
	 * no big deal, just return.
	 */
	if (FUNC0(left))
		return 1;

	FUNC8(left);
	FUNC7(left);

	free_space = FUNC5(left);
	if (free_space < data_size) {
		ret = 1;
		goto out;
	}

	/* cow and double check */
	ret = FUNC3(trans, root, left,
			      path->nodes[1], slot - 1, &left);
	if (ret) {
		/* we hit -ENOSPC, but it isn't fatal here */
		if (ret == -ENOSPC)
			ret = 1;
		goto out;
	}

	free_space = FUNC5(left);
	if (free_space < data_size) {
		ret = 1;
		goto out;
	}

	return FUNC1(path, min_data_size,
			       empty, left, free_space, right_nritems,
			       max_slot);
out:
	FUNC9(left);
	FUNC10(left);
	return ret;
}