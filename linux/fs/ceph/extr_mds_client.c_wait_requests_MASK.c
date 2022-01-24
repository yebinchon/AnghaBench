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
struct ceph_mds_request {int /*<<< orphan*/  r_wait; int /*<<< orphan*/  r_tid; } ;
struct ceph_mds_client {int /*<<< orphan*/  mutex; int /*<<< orphan*/  safe_umount_waiters; TYPE_2__* fsc; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_options* options; } ;

/* Variables and functions */
 struct ceph_mds_request* FUNC0 (struct ceph_mds_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mds_client*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ceph_mds_client *mdsc)
{
	struct ceph_options *opts = mdsc->fsc->client->options;
	struct ceph_mds_request *req;

	FUNC5(&mdsc->mutex);
	if (FUNC0(mdsc)) {
		FUNC6(&mdsc->mutex);

		FUNC3("wait_requests waiting for requests\n");
		FUNC7(&mdsc->safe_umount_waiters,
				    FUNC2(opts->mount_timeout));

		/* tear down remaining requests */
		FUNC5(&mdsc->mutex);
		while ((req = FUNC0(mdsc))) {
			FUNC3("wait_requests timed out on tid %llu\n",
			     req->r_tid);
			FUNC4(&req->r_wait);
			FUNC1(mdsc, req);
		}
	}
	FUNC6(&mdsc->mutex);
	FUNC3("wait_requests done\n");
}