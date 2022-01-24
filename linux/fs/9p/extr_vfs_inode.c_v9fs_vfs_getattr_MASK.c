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
struct p9_wstat {int dummy; } ;
typedef  struct p9_wstat p9_fid ;
struct kstat {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 scalar_t__ FUNC0 (struct p9_wstat*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC1 (struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct kstat*) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_wstat*) ; 
 struct p9_wstat* FUNC5 (struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_wstat*) ; 
 struct v9fs_session_info* FUNC8 (struct dentry*) ; 
 struct p9_wstat* FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct p9_wstat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(const struct path *path, struct kstat *stat,
		 u32 request_mask, unsigned int flags)
{
	struct dentry *dentry = path->dentry;
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid;
	struct p9_wstat *st;

	FUNC6(P9_DEBUG_VFS, "dentry: %p\n", dentry);
	v9ses = FUNC8(dentry);
	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) {
		FUNC3(FUNC2(dentry), stat);
		return 0;
	}
	fid = FUNC9(dentry);
	if (FUNC0(fid))
		return FUNC1(fid);

	st = FUNC5(fid);
	if (FUNC0(st))
		return FUNC1(st);

	FUNC10(st, FUNC2(dentry), dentry->d_sb, 0);
	FUNC3(FUNC2(dentry), stat);

	FUNC7(st);
	FUNC4(st);
	return 0;
}