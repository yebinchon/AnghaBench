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
struct ceph_mds_session {int /*<<< orphan*/  s_cap_lock; scalar_t__ s_cap_ttl; int /*<<< orphan*/  s_mds; scalar_t__ s_renew_requested; } ;
struct ceph_mds_client {TYPE_1__* mdsmap; } ;
struct TYPE_2__ {int m_session_timeout; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  RENEWCAPS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_mds_session*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ceph_mds_client *mdsc,
			 struct ceph_mds_session *session, int is_renew)
{
	int was_stale;
	int wake = 0;

	FUNC2(&session->s_cap_lock);
	was_stale = is_renew && FUNC4(jiffies, session->s_cap_ttl);

	session->s_cap_ttl = session->s_renew_requested +
		mdsc->mdsmap->m_session_timeout*HZ;

	if (was_stale) {
		if (FUNC5(jiffies, session->s_cap_ttl)) {
			FUNC1("mds%d caps renewed\n", session->s_mds);
			wake = 1;
		} else {
			FUNC1("mds%d caps still stale\n", session->s_mds);
		}
	}
	FUNC0("renewed_caps mds%d ttl now %lu, was %s, now %s\n",
	     session->s_mds, session->s_cap_ttl, was_stale ? "stale" : "fresh",
	     FUNC5(jiffies, session->s_cap_ttl) ? "stale" : "fresh");
	FUNC3(&session->s_cap_lock);

	if (wake)
		FUNC6(session, RENEWCAPS);
}