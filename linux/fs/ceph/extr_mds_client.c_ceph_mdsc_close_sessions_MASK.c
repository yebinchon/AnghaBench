#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ceph_options {int /*<<< orphan*/  mount_timeout; } ;
struct ceph_mds_session {int /*<<< orphan*/  s_mutex; } ;
struct ceph_mds_client {int max_sessions; int /*<<< orphan*/  delayed_work; int /*<<< orphan*/  cap_reclaim_work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cap_delay_list; scalar_t__* sessions; int /*<<< orphan*/  session_close_wq; TYPE_2__* fsc; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_options* options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ceph_mds_session* FUNC1 (struct ceph_mds_client*,int) ; 
 scalar_t__ FUNC2 (struct ceph_mds_client*,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_mds_client*,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_mds_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_mds_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_mds_client*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 struct ceph_mds_session* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC18(struct ceph_mds_client *mdsc)
{
	struct ceph_options *opts = mdsc->fsc->client->options;
	struct ceph_mds_session *session;
	int i;
	int skipped = 0;

	FUNC11("close_sessions\n");

	/* close sessions */
	FUNC14(&mdsc->mutex);
	for (i = 0; i < mdsc->max_sessions; i++) {
		session = FUNC1(mdsc, i);
		if (!session)
			continue;
		FUNC15(&mdsc->mutex);
		FUNC14(&session->s_mutex);
		if (FUNC2(mdsc, session) <= 0)
			skipped++;
		FUNC15(&session->s_mutex);
		FUNC8(session);
		FUNC14(&mdsc->mutex);
	}
	FUNC15(&mdsc->mutex);

	FUNC11("waiting for sessions to close\n");
	FUNC17(mdsc->session_close_wq,
			   FUNC10(mdsc, skipped),
			   FUNC9(opts->mount_timeout));

	/* tear down remaining sessions */
	FUNC14(&mdsc->mutex);
	for (i = 0; i < mdsc->max_sessions; i++) {
		if (mdsc->sessions[i]) {
			session = FUNC12(mdsc->sessions[i]);
			FUNC3(mdsc, session);
			FUNC15(&mdsc->mutex);
			FUNC14(&session->s_mutex);
			FUNC16(session);
			FUNC15(&session->s_mutex);
			FUNC8(session);
			FUNC14(&mdsc->mutex);
		}
	}
	FUNC0(!FUNC13(&mdsc->cap_delay_list));
	FUNC15(&mdsc->mutex);

	FUNC7(mdsc);
	FUNC6(mdsc);

	FUNC5(&mdsc->cap_reclaim_work);
	FUNC4(&mdsc->delayed_work); /* cancel timer */

	FUNC11("stopped\n");
}