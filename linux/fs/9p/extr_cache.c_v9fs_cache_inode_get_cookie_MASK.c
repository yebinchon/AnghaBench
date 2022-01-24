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
struct v9fs_inode {scalar_t__ fscache; int /*<<< orphan*/  vfs_inode; TYPE_1__ qid; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_FSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct v9fs_inode* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,struct v9fs_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  v9fs_cache_inode_index_def ; 
 struct v9fs_session_info* FUNC5 (struct inode*) ; 

void FUNC6(struct inode *inode)
{
	struct v9fs_inode *v9inode;
	struct v9fs_session_info *v9ses;

	if (!FUNC0(inode->i_mode))
		return;

	v9inode = FUNC1(inode);
	if (v9inode->fscache)
		return;

	v9ses = FUNC5(inode);
	v9inode->fscache = FUNC2(v9ses->fscache,
						  &v9fs_cache_inode_index_def,
						  &v9inode->qid.path,
						  sizeof(v9inode->qid.path),
						  &v9inode->qid.version,
						  sizeof(v9inode->qid.version),
						  v9inode,
						  FUNC3(&v9inode->vfs_inode),
						  true);

	FUNC4(P9_DEBUG_FSC, "inode %p get cookie %p\n",
		 inode, v9inode->fscache);
}