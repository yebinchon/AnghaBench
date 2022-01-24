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
struct autofs_info {void* last_used; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 unsigned int AUTOFS_EXP_FORCED ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,unsigned long,unsigned int) ; 
 struct autofs_info* FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct vfsmount*,struct dentry*,unsigned int) ; 
 unsigned int FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct dentry* FUNC7 (struct dentry*,struct dentry*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC8 (char*,struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 

__attribute__((used)) static int FUNC10(struct vfsmount *mnt,
			    struct dentry *top,
			    unsigned long timeout,
			    unsigned int how)
{
	struct autofs_info *top_ino = FUNC2(top);
	struct dentry *p;

	FUNC8("top %p %pd\n", top, top);

	/* Negative dentry - give up */
	if (!FUNC9(top))
		return 1;

	p = NULL;
	while ((p = FUNC7(p, top))) {
		FUNC8("dentry %p %pd\n", p, p);

		/*
		 * Is someone visiting anywhere in the subtree ?
		 * If there's no mount we need to check the usage
		 * count for the autofs dentry.
		 * If the fs is busy update the expiry counter.
		 */
		if (FUNC5(p)) {
			if (FUNC3(mnt, p, how)) {
				top_ino->last_used = jiffies;
				FUNC6(p);
				return 1;
			}
		} else {
			struct autofs_info *ino = FUNC2(p);
			unsigned int ino_count = FUNC0(&ino->count);

			/* allow for dget above and top is already dgot */
			if (p == top)
				ino_count += 2;
			else
				ino_count++;

			if (FUNC4(p) > ino_count) {
				top_ino->last_used = jiffies;
				FUNC6(p);
				return 1;
			}
		}
	}

	/* Forced expire, user space handles busy mounts */
	if (how & AUTOFS_EXP_FORCED)
		return 0;

	/* Timeout of a tree mount is ultimately determined by its top dentry */
	if (!FUNC1(top, timeout, how))
		return 1;

	return 0;
}