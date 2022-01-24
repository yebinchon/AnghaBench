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
struct prop_handler {int (* apply ) (struct inode*,char const*,size_t) ;int /*<<< orphan*/  xattr_name; } ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_HAS_PROPS ; 
 int EINVAL ; 
 int FUNC2 (struct btrfs_trans_handle*,struct inode*,int /*<<< orphan*/ ,char const*,size_t,int) ; 
 struct prop_handler* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,char const*,size_t) ; 
 int FUNC6 (struct inode*,char const*,size_t) ; 

int FUNC7(struct btrfs_trans_handle *trans, struct inode *inode,
		   const char *name, const char *value, size_t value_len,
		   int flags)
{
	const struct prop_handler *handler;
	int ret;

	handler = FUNC3(name, NULL);
	if (!handler)
		return -EINVAL;

	if (value_len == 0) {
		ret = FUNC2(trans, inode, handler->xattr_name,
				     NULL, 0, flags);
		if (ret)
			return ret;

		ret = handler->apply(inode, NULL, 0);
		FUNC0(ret == 0);

		return ret;
	}

	ret = FUNC2(trans, inode, handler->xattr_name, value,
			     value_len, flags);
	if (ret)
		return ret;
	ret = handler->apply(inode, value, value_len);
	if (ret) {
		FUNC2(trans, inode, handler->xattr_name, NULL,
			       0, flags);
		return ret;
	}

	FUNC4(BTRFS_INODE_HAS_PROPS, &FUNC1(inode)->runtime_flags);

	return 0;
}