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
struct ceph_inode_info {int i_ceph_flags; int /*<<< orphan*/  i_ceph_lock; } ;

/* Variables and functions */
 int CEPH_I_ERROR_WRITE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct ceph_inode_info *ci)
{
	if (FUNC0(ci->i_ceph_flags) & CEPH_I_ERROR_WRITE) {
		FUNC1(&ci->i_ceph_lock);
		ci->i_ceph_flags &= ~CEPH_I_ERROR_WRITE;
		FUNC2(&ci->i_ceph_lock);
	}
}