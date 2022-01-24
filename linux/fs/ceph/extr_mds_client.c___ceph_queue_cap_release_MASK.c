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
struct ceph_mds_session {int s_num_cap_releases; int /*<<< orphan*/  s_mdsc; int /*<<< orphan*/  s_cap_releases; } ;
struct ceph_cap {int /*<<< orphan*/  session_caps; } ;

/* Variables and functions */
 int CEPH_CAPS_PER_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct ceph_mds_session *session,
			      struct ceph_cap *cap)
{
	FUNC1(&cap->session_caps, &session->s_cap_releases);
	session->s_num_cap_releases++;

	if (!(session->s_num_cap_releases % CEPH_CAPS_PER_RELEASE))
		FUNC0(session->s_mdsc, session);
}