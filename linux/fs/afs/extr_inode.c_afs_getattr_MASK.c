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
struct path {int /*<<< orphan*/  dentry; } ;
struct kstat {int dummy; } ;
struct inode {int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_ino; } ;
struct afs_vnode {int /*<<< orphan*/  cb_lock; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct kstat*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 

int FUNC7(const struct path *path, struct kstat *stat,
		u32 request_mask, unsigned int query_flags)
{
	struct inode *inode = FUNC2(path->dentry);
	struct afs_vnode *vnode = FUNC0(inode);
	int seq = 0;

	FUNC1("{ ino=%lu v=%u }", inode->i_ino, inode->i_generation);

	do {
		FUNC6(&vnode->cb_lock, &seq);
		FUNC4(inode, stat);
	} while (FUNC5(&vnode->cb_lock, seq));

	FUNC3(&vnode->cb_lock, seq);
	return 0;
}