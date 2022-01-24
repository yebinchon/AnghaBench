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
struct inode {int dummy; } ;
struct v9fs_inode {struct inode vfs_inode; int /*<<< orphan*/  v_mutex; scalar_t__ cache_validity; int /*<<< orphan*/ * writeback_fid; int /*<<< orphan*/  fscache_lock; int /*<<< orphan*/ * fscache; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v9fs_inode_cache ; 

struct inode *FUNC2(struct super_block *sb)
{
	struct v9fs_inode *v9inode;
	v9inode = (struct v9fs_inode *)FUNC0(v9fs_inode_cache,
							GFP_KERNEL);
	if (!v9inode)
		return NULL;
#ifdef CONFIG_9P_FSCACHE
	v9inode->fscache = NULL;
	mutex_init(&v9inode->fscache_lock);
#endif
	v9inode->writeback_fid = NULL;
	v9inode->cache_validity = 0;
	FUNC1(&v9inode->v_mutex);
	return &v9inode->vfs_inode;
}