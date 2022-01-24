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
struct ceph_mds_session {scalar_t__ s_state; int /*<<< orphan*/  s_mutex; int /*<<< orphan*/  s_waiting; } ;
struct ceph_mds_client {int max_sessions; int /*<<< orphan*/  mutex; int /*<<< orphan*/  waiting_for_map; } ;

/* Variables and functions */
 scalar_t__ CEPH_MDS_SESSION_CLOSING ; 
 scalar_t__ CEPH_MDS_SESSION_REJECTED ; 
 struct ceph_mds_session* FUNC0 (struct ceph_mds_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mds_client*,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mds_client*,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_mds_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mds_client*,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_mds_client*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_mds_session*) ; 

void FUNC11(struct ceph_mds_client *mdsc)
{
	struct ceph_mds_session *session;
	int mds;

	FUNC6("force umount\n");

	FUNC8(&mdsc->mutex);
	for (mds = 0; mds < mdsc->max_sessions; mds++) {
		session = FUNC0(mdsc, mds);
		if (!session)
			continue;

		if (session->s_state == CEPH_MDS_SESSION_REJECTED)
			FUNC2(mdsc, session);
		FUNC3(mdsc, &session->s_waiting);
		FUNC9(&mdsc->mutex);

		FUNC8(&session->s_mutex);
		FUNC1(mdsc, session);
		if (session->s_state == CEPH_MDS_SESSION_CLOSING) {
			FUNC5(mdsc, session);
			FUNC10(session);
		}
		FUNC9(&session->s_mutex);
		FUNC4(session);

		FUNC8(&mdsc->mutex);
		FUNC7(mdsc, mds);
	}
	FUNC3(mdsc, &mdsc->waiting_for_map);
	FUNC9(&mdsc->mutex);
}