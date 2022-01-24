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
struct ceph_mds_session {scalar_t__ s_state; } ;
struct ceph_mds_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ CEPH_MDS_SESSION_CLOSING ; 
 scalar_t__ CEPH_MDS_SESSION_NEW ; 
 scalar_t__ FUNC0 (struct ceph_mds_session*) ; 
 struct ceph_mds_session* FUNC1 (struct ceph_mds_client*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mds_client*,struct ceph_mds_session*) ; 
 struct ceph_mds_session* FUNC3 (struct ceph_mds_client*,int) ; 

__attribute__((used)) static struct ceph_mds_session *
FUNC4(struct ceph_mds_client *mdsc, int target)
{
	struct ceph_mds_session *session;

	session = FUNC1(mdsc, target);
	if (!session) {
		session = FUNC3(mdsc, target);
		if (FUNC0(session))
			return session;
	}
	if (session->s_state == CEPH_MDS_SESSION_NEW ||
	    session->s_state == CEPH_MDS_SESSION_CLOSING)
		FUNC2(mdsc, session);

	return session;
}