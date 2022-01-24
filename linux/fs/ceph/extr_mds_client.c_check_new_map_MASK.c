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
struct ceph_mdsmap {int m_num_mds; int /*<<< orphan*/  m_epoch; } ;
struct ceph_mds_session {scalar_t__ s_state; int /*<<< orphan*/  s_mds; int /*<<< orphan*/  s_mutex; int /*<<< orphan*/  s_con; int /*<<< orphan*/  s_waiting; } ;
struct ceph_mds_client {int max_sessions; struct ceph_mds_session** sessions; int /*<<< orphan*/  mutex; } ;
struct ceph_entity_addr {int dummy; } ;

/* Variables and functions */
 scalar_t__ CEPH_MDS_SESSION_CLOSING ; 
 scalar_t__ CEPH_MDS_SESSION_HUNG ; 
 scalar_t__ CEPH_MDS_SESSION_OPEN ; 
 scalar_t__ CEPH_MDS_SESSION_RESTARTING ; 
 int CEPH_MDS_STATE_ACTIVE ; 
 int CEPH_MDS_STATE_CREATING ; 
 int CEPH_MDS_STATE_RECONNECT ; 
 int CEPH_MDS_STATE_STARTING ; 
 int /*<<< orphan*/  RECONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_mds_client*,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mds_client*,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mds_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_mds_client*,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_mdsmap*,int) ; 
 int FUNC7 (struct ceph_mdsmap*,int) ; 
 scalar_t__ FUNC8 (struct ceph_mdsmap*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ceph_mds_client*,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC13 (struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC14 (struct ceph_mds_client*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC20 (struct ceph_mds_client*,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC21 (struct ceph_mds_session*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC22(struct ceph_mds_client *mdsc,
			  struct ceph_mdsmap *newmap,
			  struct ceph_mdsmap *oldmap)
{
	int i;
	int oldstate, newstate;
	struct ceph_mds_session *s;

	FUNC12("check_new_map new %u old %u\n",
	     newmap->m_epoch, oldmap->m_epoch);

	for (i = 0; i < oldmap->m_num_mds && i < mdsc->max_sessions; i++) {
		if (!mdsc->sessions[i])
			continue;
		s = mdsc->sessions[i];
		oldstate = FUNC7(oldmap, i);
		newstate = FUNC7(newmap, i);

		FUNC12("check_new_map mds%d state %s%s -> %s%s (session %s)\n",
		     i, FUNC5(oldstate),
		     FUNC8(oldmap, i) ? " (laggy)" : "",
		     FUNC5(newstate),
		     FUNC8(newmap, i) ? " (laggy)" : "",
		     FUNC10(s->s_state));

		if (i >= newmap->m_num_mds) {
			/* force close session for stopped mds */
			FUNC13(s);
			FUNC1(mdsc, s);
			FUNC2(mdsc, &s->s_waiting);
			FUNC17(&mdsc->mutex);

			FUNC16(&s->s_mutex);
			FUNC11(mdsc, s);
			FUNC19(s);
			FUNC17(&s->s_mutex);

			FUNC9(s);

			FUNC16(&mdsc->mutex);
			FUNC14(mdsc, i);
			continue;
		}

		if (FUNC15(FUNC6(oldmap, i),
			   FUNC6(newmap, i),
			   sizeof(struct ceph_entity_addr))) {
			/* just close it */
			FUNC17(&mdsc->mutex);
			FUNC16(&s->s_mutex);
			FUNC16(&mdsc->mutex);
			FUNC3(&s->s_con);
			FUNC17(&s->s_mutex);
			s->s_state = CEPH_MDS_SESSION_RESTARTING;
		} else if (oldstate == newstate) {
			continue;  /* nothing new with this mds */
		}

		/*
		 * send reconnect?
		 */
		if (s->s_state == CEPH_MDS_SESSION_RESTARTING &&
		    newstate >= CEPH_MDS_STATE_RECONNECT) {
			FUNC17(&mdsc->mutex);
			FUNC20(mdsc, s);
			FUNC16(&mdsc->mutex);
		}

		/*
		 * kick request on any mds that has gone active.
		 */
		if (oldstate < CEPH_MDS_STATE_ACTIVE &&
		    newstate >= CEPH_MDS_STATE_ACTIVE) {
			if (oldstate != CEPH_MDS_STATE_CREATING &&
			    oldstate != CEPH_MDS_STATE_STARTING)
				FUNC18("mds%d recovery completed\n", s->s_mds);
			FUNC14(mdsc, i);
			FUNC4(mdsc, s);
			FUNC21(s, RECONNECT);
		}
	}

	for (i = 0; i < newmap->m_num_mds && i < mdsc->max_sessions; i++) {
		s = mdsc->sessions[i];
		if (!s)
			continue;
		if (!FUNC8(newmap, i))
			continue;
		if (s->s_state == CEPH_MDS_SESSION_OPEN ||
		    s->s_state == CEPH_MDS_SESSION_HUNG ||
		    s->s_state == CEPH_MDS_SESSION_CLOSING) {
			FUNC12(" connecting to export targets of laggy mds%d\n",
			     i);
			FUNC0(mdsc, s);
		}
	}
}