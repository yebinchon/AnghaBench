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
struct dentry {int dummy; } ;
struct configfs_dirent {int s_type; int /*<<< orphan*/  s_links; } ;
struct config_item {TYPE_1__* ci_dentry; } ;
struct TYPE_2__ {struct configfs_dirent* d_fsdata; } ;

/* Variables and functions */
 int CONFIGFS_USET_DROPPING ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct configfs_dirent*,TYPE_1__*,struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  FUNC2 (struct configfs_dirent*) ; 
 int FUNC3 (struct config_item*,struct config_item*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct config_item *parent_item,
		       struct config_item *item,
		       struct dentry *dentry)
{
	struct configfs_dirent *target_sd = item->ci_dentry->d_fsdata;
	char *body;
	int ret;

	if (!FUNC1(target_sd))
		return -ENOENT;

	body = FUNC6(PAGE_SIZE, GFP_KERNEL);
	if (!body)
		return -ENOMEM;

	FUNC2(target_sd);
	FUNC7(&configfs_dirent_lock);
	if (target_sd->s_type & CONFIGFS_USET_DROPPING) {
		FUNC8(&configfs_dirent_lock);
		FUNC4(target_sd);
		FUNC5(body);
		return -ENOENT;
	}
	target_sd->s_links++;
	FUNC8(&configfs_dirent_lock);
	ret = FUNC3(parent_item, item, body);
	if (!ret)
		ret = FUNC0(target_sd, parent_item->ci_dentry,
					   dentry, body);
	if (ret) {
		FUNC7(&configfs_dirent_lock);
		target_sd->s_links--;
		FUNC8(&configfs_dirent_lock);
		FUNC4(target_sd);
		FUNC5(body);
	}
	return ret;
}