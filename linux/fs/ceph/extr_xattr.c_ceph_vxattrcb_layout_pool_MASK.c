#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ceph_osd_client {int /*<<< orphan*/  lock; int /*<<< orphan*/  osdmap; } ;
struct TYPE_4__ {int /*<<< orphan*/  pool_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_sb; } ;
struct ceph_inode_info {TYPE_1__ i_layout; TYPE_2__ vfs_inode; } ;
struct ceph_fs_client {TYPE_3__* client; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_6__ {struct ceph_osd_client osdc; } ;

/* Variables and functions */
 size_t FUNC0 (char*,size_t,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ceph_fs_client* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct ceph_inode_info *ci,
					 char *val, size_t size)
{
	ssize_t ret;
	struct ceph_fs_client *fsc = FUNC2(ci->vfs_inode.i_sb);
	struct ceph_osd_client *osdc = &fsc->client->osdc;
	s64 pool = ci->i_layout.pool_id;
	const char *pool_name;

	FUNC3(&osdc->lock);
	pool_name = FUNC1(osdc->osdmap, pool);
	if (pool_name) {
		ret = FUNC5(pool_name);
		if (ret <= size)
			FUNC4(val, pool_name, ret);
	} else {
		ret = FUNC0(val, size, "%lld", pool);
	}
	FUNC6(&osdc->lock);
	return ret;
}