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
struct v9fs_session_info {scalar_t__ cache; } ;
struct p9_wstat {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 scalar_t__ FUNC0 (struct p9_wstat*) ; 
 int FUNC1 (struct p9_wstat*) ; 
 int S_IFMT ; 
 unsigned int V9FS_STAT2INODE_KEEP_ISIZE ; 
 int /*<<< orphan*/  FUNC2 (struct p9_wstat*) ; 
 struct p9_wstat* FUNC3 (struct p9_fid*) ; 
 int FUNC4 (struct v9fs_session_info*,struct p9_wstat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_wstat*) ; 
 struct v9fs_session_info* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_wstat*,struct inode*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC8(struct p9_fid *fid, struct inode *inode)
{
	int umode;
	dev_t rdev;
	struct p9_wstat *st;
	struct v9fs_session_info *v9ses;
	unsigned int flags;

	v9ses = FUNC6(inode);
	st = FUNC3(fid);
	if (FUNC0(st))
		return FUNC1(st);
	/*
	 * Don't update inode if the file type is different
	 */
	umode = FUNC4(v9ses, st, &rdev);
	if ((inode->i_mode & S_IFMT) != (umode & S_IFMT))
		goto out;

	/*
	 * We don't want to refresh inode->i_size,
	 * because we may have cached data
	 */
	flags = (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) ?
		V9FS_STAT2INODE_KEEP_ISIZE : 0;
	FUNC7(st, inode, inode->i_sb, flags);
out:
	FUNC5(st);
	FUNC2(st);
	return 0;
}