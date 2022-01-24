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
struct dentry {int /*<<< orphan*/  d_fsdata; } ;
struct debugfs_fsdata {int /*<<< orphan*/  active_users; int /*<<< orphan*/  active_users_drained; void* real_fops; } ;

/* Variables and functions */
 unsigned long DEBUGFS_FSDATA_IS_REAL_FOPS_BIT ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*,struct debugfs_fsdata*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct debugfs_fsdata*) ; 
 struct debugfs_fsdata* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

int FUNC8(struct dentry *dentry)
{
	struct debugfs_fsdata *fsd;
	void *d_fsd;

	d_fsd = FUNC0(dentry->d_fsdata);
	if (!((unsigned long)d_fsd & DEBUGFS_FSDATA_IS_REAL_FOPS_BIT)) {
		fsd = d_fsd;
	} else {
		fsd = FUNC5(sizeof(*fsd), GFP_KERNEL);
		if (!fsd)
			return -ENOMEM;

		fsd->real_fops = (void *)((unsigned long)d_fsd &
					~DEBUGFS_FSDATA_IS_REAL_FOPS_BIT);
		FUNC7(&fsd->active_users, 1);
		FUNC3(&fsd->active_users_drained);
		if (FUNC1(&dentry->d_fsdata, d_fsd, fsd) != d_fsd) {
			FUNC4(fsd);
			fsd = FUNC0(dentry->d_fsdata);
		}
	}

	/*
	 * In case of a successful cmpxchg() above, this check is
	 * strictly necessary and must follow it, see the comment in
	 * __debugfs_remove_file().
	 * OTOH, if the cmpxchg() hasn't been executed or wasn't
	 * successful, this serves the purpose of not starving
	 * removers.
	 */
	if (FUNC2(dentry))
		return -EIO;

	if (!FUNC6(&fsd->active_users))
		return -EIO;

	return 0;
}