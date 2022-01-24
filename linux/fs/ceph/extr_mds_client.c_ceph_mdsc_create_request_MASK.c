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
struct timespec64 {int dummy; } ;
struct ceph_mds_request {int r_resend_mds; int r_fmode; int r_op; int r_direct_mode; int /*<<< orphan*/  r_stamp; int /*<<< orphan*/  r_unsafe_item; int /*<<< orphan*/  r_safe_completion; int /*<<< orphan*/  r_completion; int /*<<< orphan*/  r_wait; int /*<<< orphan*/  r_node; int /*<<< orphan*/  r_kref; int /*<<< orphan*/  r_unsafe_target_item; int /*<<< orphan*/  r_unsafe_dir_item; int /*<<< orphan*/  r_started; struct ceph_mds_client* r_mdsc; int /*<<< orphan*/  r_fill_mutex; } ;
struct ceph_mds_client {TYPE_2__* fsc; } ;
struct TYPE_4__ {TYPE_1__* sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_time_gran; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ceph_mds_request* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct timespec64*) ; 
 struct ceph_mds_request* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct timespec64,int /*<<< orphan*/ ) ; 

struct ceph_mds_request *
FUNC9(struct ceph_mds_client *mdsc, int op, int mode)
{
	struct ceph_mds_request *req = FUNC6(sizeof(*req), GFP_NOFS);
	struct timespec64 ts;

	if (!req)
		return FUNC0(-ENOMEM);

	FUNC7(&req->r_fill_mutex);
	req->r_mdsc = mdsc;
	req->r_started = jiffies;
	req->r_resend_mds = -1;
	FUNC1(&req->r_unsafe_dir_item);
	FUNC1(&req->r_unsafe_target_item);
	req->r_fmode = -1;
	FUNC4(&req->r_kref);
	FUNC2(&req->r_node);
	FUNC1(&req->r_wait);
	FUNC3(&req->r_completion);
	FUNC3(&req->r_safe_completion);
	FUNC1(&req->r_unsafe_item);

	FUNC5(&ts);
	req->r_stamp = FUNC8(ts, mdsc->fsc->sb->s_time_gran);

	req->r_op = op;
	req->r_direct_mode = mode;
	return req;
}