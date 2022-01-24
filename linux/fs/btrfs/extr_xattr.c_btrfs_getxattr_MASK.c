#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {struct extent_buffer** nodes; } ;
struct btrfs_dir_item {int dummy; } ;
struct TYPE_3__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int ENODATA ; 
 int ENOMEM ; 
 int ERANGE ; 
 scalar_t__ FUNC1 (struct btrfs_dir_item*) ; 
 int FUNC2 (struct btrfs_dir_item*) ; 
 struct btrfs_path* FUNC3 () ; 
 size_t FUNC4 (struct extent_buffer*,struct btrfs_dir_item*) ; 
 int FUNC5 (struct extent_buffer*,struct btrfs_dir_item*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 struct btrfs_dir_item* FUNC8 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,void*,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

int FUNC11(struct inode *inode, const char *name,
				void *buffer, size_t size)
{
	struct btrfs_dir_item *di;
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_path *path;
	struct extent_buffer *leaf;
	int ret = 0;
	unsigned long data_ptr;

	path = FUNC3();
	if (!path)
		return -ENOMEM;

	/* lookup the xattr by name */
	di = FUNC8(NULL, root, path, FUNC7(FUNC0(inode)),
			name, FUNC10(name), 0);
	if (!di) {
		ret = -ENODATA;
		goto out;
	} else if (FUNC1(di)) {
		ret = FUNC2(di);
		goto out;
	}

	leaf = path->nodes[0];
	/* if size is 0, that means we want the size of the attr */
	if (!size) {
		ret = FUNC4(leaf, di);
		goto out;
	}

	/* now get the data out of our dir_item */
	if (FUNC4(leaf, di) > size) {
		ret = -ERANGE;
		goto out;
	}

	/*
	 * The way things are packed into the leaf is like this
	 * |struct btrfs_dir_item|name|data|
	 * where name is the xattr name, so security.foo, and data is the
	 * content of the xattr.  data_ptr points to the location in memory
	 * where the data starts in the in memory leaf
	 */
	data_ptr = (unsigned long)((char *)(di + 1) +
				   FUNC5(leaf, di));
	FUNC9(leaf, buffer, data_ptr,
			   FUNC4(leaf, di));
	ret = FUNC4(leaf, di);

out:
	FUNC6(path);
	return ret;
}