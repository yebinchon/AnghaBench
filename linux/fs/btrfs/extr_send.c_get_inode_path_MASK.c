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
struct fs_path {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * slots; int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;

/* Variables and functions */
 scalar_t__ BTRFS_INODE_EXTREF_KEY ; 
 scalar_t__ BTRFS_INODE_REF_KEY ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  __copy_first_ref ; 
 struct btrfs_path* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fs_path*) ; 
 int FUNC5 (struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int,int /*<<< orphan*/ ,struct fs_path*) ; 

__attribute__((used)) static int FUNC6(struct btrfs_root *root,
			  u64 ino, struct fs_path *path)
{
	int ret;
	struct btrfs_key key, found_key;
	struct btrfs_path *p;

	p = FUNC0();
	if (!p)
		return -ENOMEM;

	FUNC4(path);

	key.objectid = ino;
	key.type = BTRFS_INODE_REF_KEY;
	key.offset = 0;

	ret = FUNC3(root, &key, p, 1, 0);
	if (ret < 0)
		goto out;
	if (ret) {
		ret = 1;
		goto out;
	}
	FUNC2(p->nodes[0], &found_key, p->slots[0]);
	if (found_key.objectid != ino ||
	    (found_key.type != BTRFS_INODE_REF_KEY &&
	     found_key.type != BTRFS_INODE_EXTREF_KEY)) {
		ret = -ENOENT;
		goto out;
	}

	ret = FUNC5(root, p, &found_key, 1,
				__copy_first_ref, path);
	if (ret < 0)
		goto out;
	ret = 0;

out:
	FUNC1(p);
	return ret;
}