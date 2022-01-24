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
typedef  scalar_t__ u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; int type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,struct btrfs_key*,scalar_t__) ; 
 int FUNC2 (struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 

int FUNC4(struct btrfs_root *root,
			struct btrfs_path *path, u64 min_objectid,
			int type)
{
	struct btrfs_key found_key;
	struct extent_buffer *leaf;
	u32 nritems;
	int ret;

	while (1) {
		if (path->slots[0] == 0) {
			FUNC3(path);
			ret = FUNC2(root, path);
			if (ret != 0)
				return ret;
		} else {
			path->slots[0]--;
		}
		leaf = path->nodes[0];
		nritems = FUNC0(leaf);
		if (nritems == 0)
			return 1;
		if (path->slots[0] == nritems)
			path->slots[0]--;

		FUNC1(leaf, &found_key, path->slots[0]);
		if (found_key.objectid < min_objectid)
			break;
		if (found_key.type == type)
			return 0;
		if (found_key.objectid == min_objectid &&
		    found_key.type < type)
			break;
	}
	return 1;
}