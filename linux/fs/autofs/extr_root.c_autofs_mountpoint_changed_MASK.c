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
struct path {struct dentry* dentry; } ;
struct dentry {int /*<<< orphan*/  d_name; struct dentry* d_parent; int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int /*<<< orphan*/  type; } ;
struct autofs_info {int /*<<< orphan*/  last_used; } ;

/* Variables and functions */
 struct autofs_info* FUNC0 (struct dentry*) ; 
 struct autofs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC3 (struct dentry*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static struct dentry *FUNC6(struct path *path)
{
	struct dentry *dentry = path->dentry;
	struct autofs_sb_info *sbi = FUNC1(dentry->d_sb);

	/*
	 * If this is an indirect mount the dentry could have gone away
	 * as a result of an expire and a new one created.
	 */
	if (FUNC2(sbi->type) && FUNC4(dentry)) {
		struct dentry *parent = dentry->d_parent;
		struct autofs_info *ino;
		struct dentry *new;

		new = FUNC3(parent, &dentry->d_name);
		if (!new)
			return NULL;
		ino = FUNC0(new);
		ino->last_used = jiffies;
		FUNC5(path->dentry);
		path->dentry = new;
	}
	return path->dentry;
}