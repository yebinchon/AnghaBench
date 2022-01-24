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

/* Variables and functions */
 unsigned int AUTOFS_EXP_FORCED ; 
 scalar_t__ FUNC0 (struct dentry*,unsigned long,unsigned int) ; 
 scalar_t__ FUNC1 (struct vfsmount*,struct dentry*,unsigned int) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct dentry*,struct dentry*) ; 

__attribute__((used)) static struct dentry *FUNC5(struct vfsmount *mnt,
					  struct dentry *parent,
					  unsigned long timeout,
					  unsigned int how)
{
	struct dentry *p;

	FUNC4("parent %p %pd\n", parent, parent);

	p = NULL;
	while ((p = FUNC3(p, parent))) {
		FUNC4("dentry %p %pd\n", p, p);

		if (FUNC2(p)) {
			/* Can we umount this guy */
			if (FUNC1(mnt, p, how))
				continue;

			/* This isn't a submount so if a forced expire
			 * has been requested, user space handles busy
			 * mounts */
			if (how & AUTOFS_EXP_FORCED)
				return p;

			/* Can we expire this guy */
			if (FUNC0(p, timeout, how))
				return p;
		}
	}
	return NULL;
}