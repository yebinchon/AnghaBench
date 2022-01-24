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
struct dentry {int dummy; } ;
struct autofs_info {int flags; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 unsigned int AUTOFS_EXP_FORCED ; 
 unsigned int AUTOFS_EXP_LEAVES ; 
 int AUTOFS_INF_PENDING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct dentry*,unsigned long,unsigned int) ; 
 struct dentry* FUNC2 (struct vfsmount*,struct dentry*,unsigned long,unsigned int) ; 
 struct autofs_info* FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct vfsmount*,struct dentry*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct vfsmount*,struct dentry*,unsigned long,unsigned int) ; 
 unsigned int FUNC6 (struct dentry*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 scalar_t__ FUNC8 (struct dentry*) ; 
 scalar_t__ FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct dentry*,struct dentry*) ; 
 scalar_t__ FUNC12 (struct dentry*) ; 

__attribute__((used)) static struct dentry *FUNC13(struct dentry *dentry,
				    struct vfsmount *mnt,
				    unsigned long timeout,
				    unsigned int how)
{
	struct autofs_info *ino = FUNC3(dentry);
	unsigned int ino_count;

	/* No point expiring a pending mount */
	if (ino->flags & AUTOFS_INF_PENDING)
		return NULL;

	/*
	 * Case 1: (i) indirect mount or top level pseudo direct mount
	 *	   (autofs-4.1).
	 *	   (ii) indirect mount with offset mount, check the "/"
	 *	   offset (autofs-5.0+).
	 */
	if (FUNC8(dentry)) {
		FUNC11("checking mountpoint %p %pd\n", dentry, dentry);

		/* Can we umount this guy */
		if (FUNC4(mnt, dentry, how))
			return NULL;

		/* This isn't a submount so if a forced expire
		 * has been requested, user space handles busy
		 * mounts */
		if (how & AUTOFS_EXP_FORCED)
			return dentry;

		/* Can we expire this guy */
		if (FUNC1(dentry, timeout, how))
			return dentry;
		return NULL;
	}

	if (FUNC9(dentry) && FUNC7(dentry)) {
		FUNC11("checking symlink %p %pd\n", dentry, dentry);

		/* Forced expire, user space handles busy mounts */
		if (how & AUTOFS_EXP_FORCED)
			return dentry;

		/*
		 * A symlink can't be "busy" in the usual sense so
		 * just check last used for expire timeout.
		 */
		if (FUNC1(dentry, timeout, how))
			return dentry;
		return NULL;
	}

	if (FUNC12(dentry))
		return NULL;

	/* Case 2: tree mount, expire iff entire tree is not busy */
	if (!(how & AUTOFS_EXP_LEAVES)) {
		/* Not a forced expire? */
		if (!(how & AUTOFS_EXP_FORCED)) {
			/* ref-walk currently on this dentry? */
			ino_count = FUNC0(&ino->count) + 1;
			if (FUNC6(dentry) > ino_count)
				return NULL;
		}

		if (!FUNC5(mnt, dentry, timeout, how))
			return dentry;
	/*
	 * Case 3: pseudo direct mount, expire individual leaves
	 *	   (autofs-4.1).
	 */
	} else {
		struct dentry *expired;

		/* Not a forced expire? */
		if (!(how & AUTOFS_EXP_FORCED)) {
			/* ref-walk currently on this dentry? */
			ino_count = FUNC0(&ino->count) + 1;
			if (FUNC6(dentry) > ino_count)
				return NULL;
		}

		expired = FUNC2(mnt, dentry, timeout, how);
		if (expired) {
			if (expired == dentry)
				FUNC10(dentry);
			return expired;
		}
	}
	return NULL;
}