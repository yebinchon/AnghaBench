#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v9fs_session_info {int /*<<< orphan*/  fscache; } ;
struct TYPE_2__ {int /*<<< orphan*/  version; int /*<<< orphan*/  path; } ;
struct v9fs_inode {int /*<<< orphan*/  fscache_lock; struct fscache_cookie* fscache; int /*<<< orphan*/  vfs_inode; TYPE_1__ qid; } ;
struct inode {int dummy; } ;
struct fscache_cookie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_FSC ; 
 struct v9fs_inode* FUNC0 (struct inode*) ; 
 struct fscache_cookie* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,struct v9fs_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fscache_cookie*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct inode*,struct fscache_cookie*,struct fscache_cookie*) ; 
 int /*<<< orphan*/  v9fs_cache_inode_index_def ; 
 struct v9fs_session_info* FUNC7 (struct inode*) ; 

void FUNC8(struct inode *inode)
{
	struct v9fs_inode *v9inode = FUNC0(inode);
	struct v9fs_session_info *v9ses;
	struct fscache_cookie *old;

	if (!v9inode->fscache)
		return;

	old = v9inode->fscache;

	FUNC4(&v9inode->fscache_lock);
	FUNC2(v9inode->fscache, NULL, true);

	v9ses = FUNC7(inode);
	v9inode->fscache = FUNC1(v9ses->fscache,
						  &v9fs_cache_inode_index_def,
						  &v9inode->qid.path,
						  sizeof(v9inode->qid.path),
						  &v9inode->qid.version,
						  sizeof(v9inode->qid.version),
						  v9inode,
						  FUNC3(&v9inode->vfs_inode),
						  true);
	FUNC6(P9_DEBUG_FSC, "inode %p revalidating cookie old %p new %p\n",
		 inode, old, v9inode->fscache);

	FUNC5(&v9inode->fscache_lock);
}