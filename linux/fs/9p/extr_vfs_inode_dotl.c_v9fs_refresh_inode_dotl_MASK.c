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
struct p9_stat_dotl {int st_mode; } ;
struct p9_fid {int dummy; } ;
struct inode {int i_mode; } ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 scalar_t__ FUNC0 (struct p9_stat_dotl*) ; 
 int /*<<< orphan*/  P9_STATS_ALL ; 
 int FUNC1 (struct p9_stat_dotl*) ; 
 int S_IFMT ; 
 unsigned int V9FS_STAT2INODE_KEEP_ISIZE ; 
 int /*<<< orphan*/  FUNC2 (struct p9_stat_dotl*) ; 
 struct p9_stat_dotl* FUNC3 (struct p9_fid*,int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_stat_dotl*,struct inode*,unsigned int) ; 

int FUNC6(struct p9_fid *fid, struct inode *inode)
{
	struct p9_stat_dotl *st;
	struct v9fs_session_info *v9ses;
	unsigned int flags;

	v9ses = FUNC4(inode);
	st = FUNC3(fid, P9_STATS_ALL);
	if (FUNC0(st))
		return FUNC1(st);
	/*
	 * Don't update inode if the file type is different
	 */
	if ((inode->i_mode & S_IFMT) != (st->st_mode & S_IFMT))
		goto out;

	/*
	 * We don't want to refresh inode->i_size,
	 * because we may have cached data
	 */
	flags = (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) ?
		V9FS_STAT2INODE_KEEP_ISIZE : 0;
	FUNC5(st, inode, flags);
out:
	FUNC2(st);
	return 0;
}