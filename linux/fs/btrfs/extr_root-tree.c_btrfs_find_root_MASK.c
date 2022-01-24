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
struct extent_buffer {int dummy; } ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {unsigned long long offset; scalar_t__ objectid; scalar_t__ type; } ;
typedef  int /*<<< orphan*/  found_key ;

/* Variables and functions */
 scalar_t__ BTRFS_ROOT_ITEM_KEY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,int,struct btrfs_root_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key const*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_key*,struct btrfs_key*,int) ; 

int FUNC6(struct btrfs_root *root, const struct btrfs_key *search_key,
		    struct btrfs_path *path, struct btrfs_root_item *root_item,
		    struct btrfs_key *root_key)
{
	struct btrfs_key found_key;
	struct extent_buffer *l;
	int ret;
	int slot;

	ret = FUNC4(NULL, root, search_key, path, 0, 0);
	if (ret < 0)
		return ret;

	if (search_key->offset != -1ULL) {	/* the search key is exact */
		if (ret > 0)
			goto out;
	} else {
		FUNC0(ret == 0);		/* Logical error */
		if (path->slots[0] == 0)
			goto out;
		path->slots[0]--;
		ret = 0;
	}

	l = path->nodes[0];
	slot = path->slots[0];

	FUNC1(l, &found_key, slot);
	if (found_key.objectid != search_key->objectid ||
	    found_key.type != BTRFS_ROOT_ITEM_KEY) {
		ret = 1;
		goto out;
	}

	if (root_item)
		FUNC2(l, slot, root_item);
	if (root_key)
		FUNC5(root_key, &found_key, sizeof(found_key));
out:
	FUNC3(path);
	return ret;
}