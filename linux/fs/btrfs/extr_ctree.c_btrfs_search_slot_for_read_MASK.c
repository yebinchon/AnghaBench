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
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 int FUNC1 (struct btrfs_root*,struct btrfs_path*) ; 
 int FUNC2 (struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key const*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct btrfs_root *root,
			       const struct btrfs_key *key,
			       struct btrfs_path *p, int find_higher,
			       int return_any)
{
	int ret;
	struct extent_buffer *leaf;

again:
	ret = FUNC4(NULL, root, key, p, 0, 0);
	if (ret <= 0)
		return ret;
	/*
	 * a return value of 1 means the path is at the position where the
	 * item should be inserted. Normally this is the next bigger item,
	 * but in case the previous item is the last in a leaf, path points
	 * to the first free slot in the previous leaf, i.e. at an invalid
	 * item.
	 */
	leaf = p->nodes[0];

	if (find_higher) {
		if (p->slots[0] >= FUNC0(leaf)) {
			ret = FUNC1(root, p);
			if (ret <= 0)
				return ret;
			if (!return_any)
				return 1;
			/*
			 * no higher item found, return the next
			 * lower instead
			 */
			return_any = 0;
			find_higher = 0;
			FUNC3(p);
			goto again;
		}
	} else {
		if (p->slots[0] == 0) {
			ret = FUNC2(root, p);
			if (ret < 0)
				return ret;
			if (!ret) {
				leaf = p->nodes[0];
				if (p->slots[0] == FUNC0(leaf))
					p->slots[0]--;
				return 0;
			}
			if (!return_any)
				return 1;
			/*
			 * no lower item found, return the next
			 * higher instead
			 */
			return_any = 0;
			find_higher = 1;
			FUNC3(p);
			goto again;
		} else {
			--p->slots[0];
		}
	}
	return 0;
}