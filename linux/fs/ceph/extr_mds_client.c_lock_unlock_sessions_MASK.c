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
struct ceph_mds_session {int /*<<< orphan*/  s_mutex; } ;
struct ceph_mds_client {int max_sessions; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 struct ceph_mds_session* FUNC0 (struct ceph_mds_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ceph_mds_client *mdsc)
{
	int i;

	FUNC2(&mdsc->mutex);
	for (i = 0; i < mdsc->max_sessions; i++) {
		struct ceph_mds_session *s = FUNC0(mdsc, i);
		if (!s)
			continue;
		FUNC3(&mdsc->mutex);
		FUNC2(&s->s_mutex);
		FUNC3(&s->s_mutex);
		FUNC1(s);
		FUNC2(&mdsc->mutex);
	}
	FUNC3(&mdsc->mutex);
}