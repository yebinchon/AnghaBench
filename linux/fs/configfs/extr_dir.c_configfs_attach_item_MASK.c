#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dentry {int dummy; } ;
struct configfs_fragment {int dummy; } ;
struct config_item {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_DEAD ; 
 int FUNC0 (struct config_item*,struct dentry*,struct configfs_fragment*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 TYPE_1__* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (struct config_item*) ; 

__attribute__((used)) static int FUNC8(struct config_item *parent_item,
				struct config_item *item,
				struct dentry *dentry,
				struct configfs_fragment *frag)
{
	int ret;

	ret = FUNC0(item, dentry, frag);
	if (!ret) {
		ret = FUNC7(item);
		if (ret) {
			/*
			 * We are going to remove an inode and its dentry but
			 * the VFS may already have hit and used them. Thus,
			 * we must lock them as rmdir() would.
			 */
			FUNC5(FUNC3(dentry));
			FUNC1(item);
			FUNC3(dentry)->i_flags |= S_DEAD;
			FUNC4(dentry);
			FUNC6(FUNC3(dentry));
			FUNC2(dentry);
		}
	}

	return ret;
}