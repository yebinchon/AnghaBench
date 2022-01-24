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
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; } ;

/* Variables and functions */
 int FUNC0 (struct ceph_inode_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(struct ceph_inode_info *ci)
{
	int issued;
	FUNC1(&ci->i_ceph_lock);
	issued = FUNC0(ci, NULL);
	FUNC2(&ci->i_ceph_lock);
	return issued;
}