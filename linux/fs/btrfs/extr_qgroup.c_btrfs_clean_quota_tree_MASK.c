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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int leave_spinning; scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ type; scalar_t__ offset; scalar_t__ objectid; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct btrfs_path* FUNC0 () ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 
 int FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 int FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 

__attribute__((used)) static int FUNC6(struct btrfs_trans_handle *trans,
				  struct btrfs_root *root)
{
	struct btrfs_path *path;
	struct btrfs_key key;
	struct extent_buffer *leaf = NULL;
	int ret;
	int nr = 0;

	path = FUNC0();
	if (!path)
		return -ENOMEM;

	path->leave_spinning = 1;

	key.objectid = 0;
	key.offset = 0;
	key.type = 0;

	while (1) {
		ret = FUNC5(trans, root, &key, path, -1, 1);
		if (ret < 0)
			goto out;
		leaf = path->nodes[0];
		nr = FUNC3(leaf);
		if (!nr)
			break;
		/*
		 * delete the leaf one by one
		 * since the whole tree is going
		 * to be deleted.
		 */
		path->slots[0] = 0;
		ret = FUNC1(trans, root, path, 0, nr);
		if (ret)
			goto out;

		FUNC4(path);
	}
	ret = 0;
out:
	FUNC2(path);
	return ret;
}