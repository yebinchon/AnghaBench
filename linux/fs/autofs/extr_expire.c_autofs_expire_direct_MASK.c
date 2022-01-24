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
struct super_block {int /*<<< orphan*/  s_root; } ;
struct dentry {int dummy; } ;
struct autofs_sb_info {unsigned long exp_timeout; int /*<<< orphan*/  fs_lock; } ;
struct autofs_info {int flags; int /*<<< orphan*/  expire_complete; } ;

/* Variables and functions */
 int AUTOFS_INF_EXPIRING ; 
 int AUTOFS_INF_PENDING ; 
 int AUTOFS_INF_WANT_EXPIRE ; 
 struct autofs_info* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct vfsmount*,struct dentry*,unsigned long,unsigned int) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static struct dentry *FUNC8(struct super_block *sb,
					   struct vfsmount *mnt,
					   struct autofs_sb_info *sbi,
					   unsigned int how)
{
	struct dentry *root = FUNC2(sb->s_root);
	struct autofs_info *ino;
	unsigned long timeout;

	if (!root)
		return NULL;

	timeout = sbi->exp_timeout;

	if (!FUNC1(mnt, root, timeout, how)) {
		FUNC5(&sbi->fs_lock);
		ino = FUNC0(root);
		/* No point expiring a pending mount */
		if (ino->flags & AUTOFS_INF_PENDING) {
			FUNC6(&sbi->fs_lock);
			goto out;
		}
		ino->flags |= AUTOFS_INF_WANT_EXPIRE;
		FUNC6(&sbi->fs_lock);
		FUNC7();
		if (!FUNC1(mnt, root, timeout, how)) {
			FUNC5(&sbi->fs_lock);
			ino->flags |= AUTOFS_INF_EXPIRING;
			FUNC4(&ino->expire_complete);
			FUNC6(&sbi->fs_lock);
			return root;
		}
		FUNC5(&sbi->fs_lock);
		ino->flags &= ~AUTOFS_INF_WANT_EXPIRE;
		FUNC6(&sbi->fs_lock);
	}
out:
	FUNC3(root);

	return NULL;
}