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
struct inode {int dummy; } ;
struct dentry {struct dentry* d_parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTEMPTY ; 
 struct inode* FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 struct inode* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct inode*) ; 
 struct dentry* FUNC8 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*,struct dentry*) ; 
 int FUNC10 (struct inode*,struct dentry*,struct inode*,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct inode *old_dir, struct dentry *old_dentry,
		struct inode *new_dir, struct dentry *new_dentry,
		unsigned int flags)
{
	int rc;
	struct dentry *lower_old_dentry;
	struct dentry *lower_new_dentry;
	struct dentry *lower_old_dir_dentry;
	struct dentry *lower_new_dir_dentry;
	struct dentry *trap = NULL;
	struct inode *target_inode;

	if (flags)
		return -EINVAL;

	lower_old_dentry = FUNC5(old_dentry);
	lower_new_dentry = FUNC5(new_dentry);
	FUNC2(lower_old_dentry);
	FUNC2(lower_new_dentry);
	lower_old_dir_dentry = FUNC3(lower_old_dentry);
	lower_new_dir_dentry = FUNC3(lower_new_dentry);
	target_inode = FUNC0(new_dentry);
	trap = FUNC8(lower_old_dir_dentry, lower_new_dir_dentry);
	rc = -EINVAL;
	if (lower_old_dentry->d_parent != lower_old_dir_dentry)
		goto out_lock;
	if (lower_new_dentry->d_parent != lower_new_dir_dentry)
		goto out_lock;
	if (FUNC1(lower_old_dentry) || FUNC1(lower_new_dentry))
		goto out_lock;
	/* source should not be ancestor of target */
	if (trap == lower_old_dentry)
		goto out_lock;
	/* target should not be ancestor of source */
	if (trap == lower_new_dentry) {
		rc = -ENOTEMPTY;
		goto out_lock;
	}
	rc = FUNC10(FUNC0(lower_old_dir_dentry), lower_old_dentry,
			FUNC0(lower_new_dir_dentry), lower_new_dentry,
			NULL, 0);
	if (rc)
		goto out_lock;
	if (target_inode)
		FUNC7(target_inode,
				      FUNC6(target_inode));
	FUNC7(new_dir, FUNC0(lower_new_dir_dentry));
	if (new_dir != old_dir)
		FUNC7(old_dir, FUNC0(lower_old_dir_dentry));
out_lock:
	FUNC9(lower_old_dir_dentry, lower_new_dir_dentry);
	FUNC4(lower_new_dir_dentry);
	FUNC4(lower_old_dir_dentry);
	FUNC4(lower_new_dentry);
	FUNC4(lower_old_dentry);
	return rc;
}