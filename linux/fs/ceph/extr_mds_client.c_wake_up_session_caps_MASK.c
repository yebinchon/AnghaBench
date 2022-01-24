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
struct ceph_mds_session {int /*<<< orphan*/  s_mds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_mds_session*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ceph_mds_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wake_up_session_cb ; 

__attribute__((used)) static void FUNC2(struct ceph_mds_session *session, int ev)
{
	FUNC1("wake_up_session_caps %p mds%d\n", session, session->s_mds);
	FUNC0(session, wake_up_session_cb,
				  (void *)(unsigned long)ev);
}