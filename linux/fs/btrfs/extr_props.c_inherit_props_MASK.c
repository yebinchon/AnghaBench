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
typedef  int /*<<< orphan*/  u64 ;
struct prop_handler {char* (* extract ) (struct inode*) ;int (* validate ) (char const*,int /*<<< orphan*/ ) ;int (* apply ) (struct inode*,char const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  xattr_name; int /*<<< orphan*/  inheritable; } ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  block_rsv; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_flags; struct btrfs_root* root; } ;

/* Variables and functions */
 int FUNC0 (struct prop_handler*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_HAS_PROPS ; 
 int /*<<< orphan*/  BTRFS_RESERVE_NO_FLUSH ; 
 int FUNC2 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*,int) ; 
 int FUNC5 (struct btrfs_trans_handle*,struct inode*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct prop_handler* prop_handlers ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 char* FUNC8 (struct inode*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct btrfs_trans_handle *trans,
			 struct inode *inode,
			 struct inode *parent)
{
	struct btrfs_root *root = FUNC1(inode)->root;
	struct btrfs_fs_info *fs_info = root->fs_info;
	int ret;
	int i;
	bool need_reserve = false;

	if (!FUNC11(BTRFS_INODE_HAS_PROPS,
		      &FUNC1(parent)->runtime_flags))
		return 0;

	for (i = 0; i < FUNC0(prop_handlers); i++) {
		const struct prop_handler *h = &prop_handlers[i];
		const char *value;
		u64 num_bytes = 0;

		if (!h->inheritable)
			continue;

		value = h->extract(parent);
		if (!value)
			continue;

		/*
		 * This is not strictly necessary as the property should be
		 * valid, but in case it isn't, don't propagate it futher.
		 */
		ret = h->validate(value, FUNC7(value));
		if (ret)
			continue;

		/*
		 * Currently callers should be reserving 1 item for properties,
		 * since we only have 1 property that we currently support.  If
		 * we add more in the future we need to try and reserve more
		 * space for them.  But we should also revisit how we do space
		 * reservations if we do add more properties in the future.
		 */
		if (need_reserve) {
			num_bytes = FUNC4(fs_info, 1);
			ret = FUNC2(root, trans->block_rsv,
					num_bytes, BTRFS_RESERVE_NO_FLUSH);
			if (ret)
				return ret;
		}

		ret = FUNC5(trans, inode, h->xattr_name, value,
				     FUNC7(value), 0);
		if (!ret) {
			ret = h->apply(inode, value, FUNC7(value));
			if (ret)
				FUNC5(trans, inode, h->xattr_name,
					       NULL, 0, 0);
			else
				FUNC6(BTRFS_INODE_HAS_PROPS,
					&FUNC1(inode)->runtime_flags);
		}

		if (need_reserve) {
			FUNC3(fs_info, trans->block_rsv,
					num_bytes);
			if (ret)
				return ret;
		}
		need_reserve = true;
	}

	return 0;
}