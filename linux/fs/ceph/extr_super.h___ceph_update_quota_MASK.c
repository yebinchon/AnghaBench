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
typedef  void* u64 ;
struct ceph_inode_info {int /*<<< orphan*/  vfs_inode; void* i_max_files; void* i_max_bytes; } ;

/* Variables and functions */
 int FUNC0 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC2(struct ceph_inode_info *ci,
				       u64 max_bytes, u64 max_files)
{
	bool had_quota, has_quota;
	had_quota = FUNC0(ci);
	ci->i_max_bytes = max_bytes;
	ci->i_max_files = max_files;
	has_quota = FUNC0(ci);

	if (had_quota != has_quota)
		FUNC1(&ci->vfs_inode, has_quota);
}