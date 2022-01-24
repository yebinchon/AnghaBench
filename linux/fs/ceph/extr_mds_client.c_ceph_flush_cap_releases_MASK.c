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
struct ceph_mds_session {int /*<<< orphan*/  s_cap_release_work; } ;
struct ceph_mds_client {TYPE_1__* fsc; scalar_t__ stopping; } ;
struct TYPE_2__ {int /*<<< orphan*/  cap_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mds_session*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct ceph_mds_client *mdsc,
		             struct ceph_mds_session *session)
{
	if (mdsc->stopping)
		return;

	FUNC2(session);
	if (FUNC3(mdsc->fsc->cap_wq,
		       &session->s_cap_release_work)) {
		FUNC1("cap release work queued\n");
	} else {
		FUNC0(session);
		FUNC1("failed to queue cap release work\n");
	}
}