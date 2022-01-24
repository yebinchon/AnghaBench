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
struct p9_fid {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct p9_fid* FUNC0 (int) ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 scalar_t__ FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  O_RDWR ; 
 struct p9_fid* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct p9_fid*) ; 
 int FUNC4 (struct p9_fid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct p9_fid *FUNC6(struct dentry *dentry)
{
	int err;
	struct p9_fid *fid;

	fid = FUNC2(FUNC5(dentry, GLOBAL_ROOT_UID, 0));
	if (FUNC1(fid))
		goto error_out;
	/*
	 * writeback fid will only be used to write back the
	 * dirty pages. We always request for the open fid in read-write
	 * mode so that a partial page write which result in page
	 * read can work.
	 */
	err = FUNC4(fid, O_RDWR);
	if (err < 0) {
		FUNC3(fid);
		fid = FUNC0(err);
		goto error_out;
	}
error_out:
	return fid;
}