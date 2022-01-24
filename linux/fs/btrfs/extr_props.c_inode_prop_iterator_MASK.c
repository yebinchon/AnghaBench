#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct prop_handler {int (* apply ) (struct inode*,char const*,size_t) ;int /*<<< orphan*/  xattr_name; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {TYPE_1__ root_key; int /*<<< orphan*/  fs_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  runtime_flags; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_HAS_PROPS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,char const*,size_t) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void *ctx,
				const struct prop_handler *handler,
				const char *value,
				size_t len)
{
	struct inode *inode = ctx;
	struct btrfs_root *root = FUNC0(inode)->root;
	int ret;

	ret = handler->apply(inode, value, len);
	if (FUNC5(ret))
		FUNC2(root->fs_info,
			   "error applying prop %s to ino %llu (root %llu): %d",
			   handler->xattr_name, FUNC1(FUNC0(inode)),
			   root->root_key.objectid, ret);
	else
		FUNC3(BTRFS_INODE_HAS_PROPS, &FUNC0(inode)->runtime_flags);
}