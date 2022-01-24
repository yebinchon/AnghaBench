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
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct extent_buffer*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct extent_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root*,struct btrfs_path*,struct btrfs_key const*,scalar_t__*,scalar_t__,scalar_t__,int) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,scalar_t__) ; 

int FUNC5(struct btrfs_trans_handle *trans,
			 struct btrfs_root *root,
			 struct btrfs_path *path,
			 const struct btrfs_key *new_key)
{
	struct extent_buffer *leaf;
	int ret;
	u32 item_size;

	leaf = path->nodes[0];
	item_size = FUNC1(leaf, path->slots[0]);
	ret = FUNC4(trans, root, path,
				   item_size + sizeof(struct btrfs_item));
	if (ret)
		return ret;

	path->slots[0]++;
	FUNC3(root, path, new_key, &item_size,
			       item_size, item_size +
			       sizeof(struct btrfs_item), 1);
	leaf = path->nodes[0];
	FUNC2(leaf,
			     FUNC0(leaf, path->slots[0]),
			     FUNC0(leaf, path->slots[0] - 1),
			     item_size);
	return 0;
}