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
struct ceph_mds_session {int dummy; } ;
struct ceph_mds_client {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 struct ceph_mds_session* FUNC0 (struct ceph_mds_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct ceph_mds_session *
FUNC4(struct ceph_mds_client *mdsc, int target)
{
	struct ceph_mds_session *session;

	FUNC1("open_export_target_session to mds%d\n", target);

	FUNC2(&mdsc->mutex);
	session = FUNC0(mdsc, target);
	FUNC3(&mdsc->mutex);

	return session;
}