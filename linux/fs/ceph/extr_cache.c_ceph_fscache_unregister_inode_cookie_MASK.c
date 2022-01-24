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
struct fscache_cookie {int dummy; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_vino; int /*<<< orphan*/  vfs_inode; struct fscache_cookie* fscache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fscache_cookie*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fscache_cookie*,int /*<<< orphan*/ *) ; 

void FUNC2(struct ceph_inode_info* ci)
{
	struct fscache_cookie* cookie;

	if ((cookie = ci->fscache) == NULL)
		return;

	ci->fscache = NULL;

	FUNC1(cookie, &ci->vfs_inode);
	FUNC0(cookie, &ci->i_vino, false);
}