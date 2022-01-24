#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xattr_handler {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; } ;
struct dentry {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct btrfs_trans_handle*) ; 
 int FUNC3 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*) ; 
 int FUNC5 (struct btrfs_trans_handle*,struct inode*,char const*,void const*,size_t,int) ; 
 struct btrfs_trans_handle* FUNC6 (struct btrfs_root*,int) ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int FUNC8 (char const*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 char* FUNC11 (struct xattr_handler const*,char const*) ; 

__attribute__((used)) static int FUNC12(const struct xattr_handler *handler,
					struct dentry *unused, struct inode *inode,
					const char *name, const void *value,
					size_t size, int flags)
{
	int ret;
	struct btrfs_trans_handle *trans;
	struct btrfs_root *root = FUNC0(inode)->root;

	name = FUNC11(handler, name);
	ret = FUNC8(name, value, size);
	if (ret)
		return ret;

	trans = FUNC6(root, 2);
	if (FUNC2(trans))
		return FUNC3(trans);

	ret = FUNC5(trans, inode, name, value, size, flags);
	if (!ret) {
		FUNC10(inode);
		inode->i_ctime = FUNC9(inode);
		ret = FUNC7(trans, root, inode);
		FUNC1(ret);
	}

	FUNC4(trans);

	return ret;
}