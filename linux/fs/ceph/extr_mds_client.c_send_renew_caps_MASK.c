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
struct ceph_msg {int dummy; } ;
struct ceph_mds_session {int /*<<< orphan*/  s_con; int /*<<< orphan*/  s_renew_seq; int /*<<< orphan*/  s_mds; int /*<<< orphan*/  s_renew_requested; int /*<<< orphan*/  s_cap_ttl; } ;
struct ceph_mds_client {int /*<<< orphan*/  mdsmap; } ;

/* Variables and functions */
 int CEPH_MDS_STATE_RECONNECT ; 
 int /*<<< orphan*/  CEPH_SESSION_REQUEST_RENEWCAPS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ceph_msg* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ceph_mds_client *mdsc,
			   struct ceph_mds_session *session)
{
	struct ceph_msg *msg;
	int state;

	if (FUNC6(jiffies, session->s_cap_ttl) &&
	    FUNC6(session->s_cap_ttl, session->s_renew_requested))
		FUNC5("mds%d caps stale\n", session->s_mds);
	session->s_renew_requested = jiffies;

	/* do not try to renew caps until a recovering mds has reconnected
	 * with its clients. */
	state = FUNC2(mdsc->mdsmap, session->s_mds);
	if (state < CEPH_MDS_STATE_RECONNECT) {
		FUNC4("send_renew_caps ignoring mds%d (%s)\n",
		     session->s_mds, FUNC1(state));
		return 0;
	}

	FUNC4("send_renew_caps to mds%d (%s)\n", session->s_mds,
		FUNC1(state));
	msg = FUNC3(CEPH_SESSION_REQUEST_RENEWCAPS,
				 ++session->s_renew_seq);
	if (!msg)
		return -ENOMEM;
	FUNC0(&session->s_con, msg);
	return 0;
}