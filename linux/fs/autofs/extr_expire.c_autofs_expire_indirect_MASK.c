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
struct vfsmount {int dummy; } ;
struct super_block {struct dentry* s_root; } ;
struct dentry {int dummy; } ;
struct autofs_sb_info {unsigned long exp_timeout; int /*<<< orphan*/  fs_lock; } ;
struct autofs_info {int flags; int /*<<< orphan*/  expire_complete; } ;

/* Variables and functions */
 unsigned int AUTOFS_EXP_LEAVES ; 
 int AUTOFS_INF_EXPIRING ; 
 int AUTOFS_INF_WANT_EXPIRE ; 
 struct autofs_info* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct dentry*,struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*,struct vfsmount*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static struct dentry *FUNC9(struct super_block *sb,
					     struct vfsmount *mnt,
					     struct autofs_sb_info *sbi,
					     unsigned int how)
{
	unsigned long timeout;
	struct dentry *root = sb->s_root;
	struct dentry *dentry;
	struct dentry *expired;
	struct dentry *found;
	struct autofs_info *ino;

	if (!root)
		return NULL;

	timeout = sbi->exp_timeout;

	dentry = NULL;
	while ((dentry = FUNC2(dentry, root))) {
		FUNC6(&sbi->fs_lock);
		ino = FUNC0(dentry);
		if (ino->flags & AUTOFS_INF_WANT_EXPIRE) {
			FUNC7(&sbi->fs_lock);
			continue;
		}
		FUNC7(&sbi->fs_lock);

		expired = FUNC5(dentry, mnt, timeout, how);
		if (!expired)
			continue;

		FUNC6(&sbi->fs_lock);
		ino = FUNC0(expired);
		ino->flags |= AUTOFS_INF_WANT_EXPIRE;
		FUNC7(&sbi->fs_lock);
		FUNC8();

		/* Make sure a reference is not taken on found if
		 * things have changed.
		 */
		how &= ~AUTOFS_EXP_LEAVES;
		found = FUNC5(expired, mnt, timeout, how);
		if (!found || found != expired)
			/* Something has changed, continue */
			goto next;

		if (expired != dentry)
			FUNC1(dentry);

		FUNC6(&sbi->fs_lock);
		goto found;
next:
		FUNC6(&sbi->fs_lock);
		ino->flags &= ~AUTOFS_INF_WANT_EXPIRE;
		FUNC7(&sbi->fs_lock);
		if (expired != dentry)
			FUNC1(expired);
	}
	return NULL;

found:
	FUNC4("returning %p %pd\n", expired, expired);
	ino->flags |= AUTOFS_INF_EXPIRING;
	FUNC3(&ino->expire_complete);
	FUNC7(&sbi->fs_lock);
	return expired;
}