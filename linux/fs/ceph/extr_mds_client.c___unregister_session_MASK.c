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
struct ceph_mds_session {size_t s_mds; int /*<<< orphan*/  s_con; scalar_t__ s_state; } ;
struct ceph_mds_client {int /*<<< orphan*/  num_sessions; struct ceph_mds_session** sessions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,struct ceph_mds_session*) ; 

__attribute__((used)) static void FUNC5(struct ceph_mds_client *mdsc,
			       struct ceph_mds_session *s)
{
	FUNC4("__unregister_session mds%d %p\n", s->s_mds, s);
	FUNC0(mdsc->sessions[s->s_mds] != s);
	mdsc->sessions[s->s_mds] = NULL;
	s->s_state = 0;
	FUNC2(&s->s_con);
	FUNC3(s);
	FUNC1(&mdsc->num_sessions);
}