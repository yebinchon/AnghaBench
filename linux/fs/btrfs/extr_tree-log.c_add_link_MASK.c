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
typedef  int /*<<< orphan*/  u64 ;
struct inode {scalar_t__ i_nlink; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {int /*<<< orphan*/  objectid; } ;
struct btrfs_dir_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct btrfs_dir_item*) ; 
 int FUNC2 (struct btrfs_dir_item*) ; 
 int FUNC3 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btrfs_path* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct btrfs_dir_item*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct btrfs_dir_item* FUNC8 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*) ; 
 int FUNC10 (struct btrfs_trans_handle*) ; 
 int FUNC11 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 struct inode* FUNC14 (struct btrfs_root*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct btrfs_trans_handle *trans, struct btrfs_root *root,
		    struct inode *dir, struct inode *inode, const char *name,
		    int namelen, u64 ref_index)
{
	struct btrfs_dir_item *dir_item;
	struct btrfs_key key;
	struct btrfs_path *path;
	struct inode *other_inode = NULL;
	int ret;

	path = FUNC4();
	if (!path)
		return -ENOMEM;

	dir_item = FUNC8(NULL, root, path,
					 FUNC7(FUNC0(dir)),
					 name, namelen, 0);
	if (!dir_item) {
		FUNC9(path);
		goto add_link;
	} else if (FUNC1(dir_item)) {
		ret = FUNC2(dir_item);
		goto out;
	}

	/*
	 * Our inode's dentry collides with the dentry of another inode which is
	 * in the log but not yet processed since it has a higher inode number.
	 * So delete that other dentry.
	 */
	FUNC5(path->nodes[0], dir_item, &key);
	FUNC9(path);
	other_inode = FUNC14(root, key.objectid);
	if (!other_inode) {
		ret = -ENOENT;
		goto out;
	}
	ret = FUNC11(trans, root, FUNC0(dir), FUNC0(other_inode),
				 name, namelen);
	if (ret)
		goto out;
	/*
	 * If we dropped the link count to 0, bump it so that later the iput()
	 * on the inode will not free it. We will fixup the link count later.
	 */
	if (other_inode->i_nlink == 0)
		FUNC12(other_inode);

	ret = FUNC10(trans);
	if (ret)
		goto out;
add_link:
	ret = FUNC3(trans, FUNC0(dir), FUNC0(inode),
			     name, namelen, 0, ref_index);
out:
	FUNC13(other_inode);
	FUNC6(path);

	return ret;
}