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
struct ceph_mds_session {int /*<<< orphan*/  s_cap_lock; int /*<<< orphan*/  s_mds; int /*<<< orphan*/  s_caps; int /*<<< orphan*/  s_cap_iterator; } ;
struct ceph_cap {TYPE_1__* ci; int /*<<< orphan*/  session_caps; struct ceph_mds_session* session; } ;
struct TYPE_2__ {int /*<<< orphan*/  vfs_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,struct ceph_cap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ceph_cap *cap)
{
	struct ceph_mds_session *s = cap->session;

	FUNC2(&s->s_cap_lock);
	if (!s->s_cap_iterator) {
		FUNC0("__touch_cap %p cap %p mds%d\n", &cap->ci->vfs_inode, cap,
		     s->s_mds);
		FUNC1(&cap->session_caps, &s->s_caps);
	} else {
		FUNC0("__touch_cap %p cap %p mds%d NOP, iterating over caps\n",
		     &cap->ci->vfs_inode, cap, s->s_mds);
	}
	FUNC3(&s->s_cap_lock);
}