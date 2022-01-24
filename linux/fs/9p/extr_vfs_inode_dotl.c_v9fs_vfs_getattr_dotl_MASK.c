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
typedef  int /*<<< orphan*/  u32 ;
struct v9fs_session_info {scalar_t__ cache; } ;
struct path {struct dentry* dentry; } ;
struct p9_stat_dotl {int /*<<< orphan*/  st_blksize; } ;
struct p9_fid {int /*<<< orphan*/  st_blksize; } ;
struct kstat {int /*<<< orphan*/  blksize; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 scalar_t__ FUNC0 (struct p9_stat_dotl*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  P9_STATS_ALL ; 
 int FUNC1 (struct p9_stat_dotl*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct kstat*) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_stat_dotl*) ; 
 struct p9_stat_dotl* FUNC5 (struct p9_stat_dotl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct dentry*) ; 
 struct v9fs_session_info* FUNC7 (struct dentry*) ; 
 struct p9_stat_dotl* FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct p9_stat_dotl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(const struct path *path, struct kstat *stat,
		 u32 request_mask, unsigned int flags)
{
	struct dentry *dentry = path->dentry;
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid;
	struct p9_stat_dotl *st;

	FUNC6(P9_DEBUG_VFS, "dentry: %p\n", dentry);
	v9ses = FUNC7(dentry);
	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) {
		FUNC3(FUNC2(dentry), stat);
		return 0;
	}
	fid = FUNC8(dentry);
	if (FUNC0(fid))
		return FUNC1(fid);

	/* Ask for all the fields in stat structure. Server will return
	 * whatever it supports
	 */

	st = FUNC5(fid, P9_STATS_ALL);
	if (FUNC0(st))
		return FUNC1(st);

	FUNC9(st, FUNC2(dentry), 0);
	FUNC3(FUNC2(dentry), stat);
	/* Change block size to what the server returned */
	stat->blksize = st->st_blksize;

	FUNC4(st);
	return 0;
}