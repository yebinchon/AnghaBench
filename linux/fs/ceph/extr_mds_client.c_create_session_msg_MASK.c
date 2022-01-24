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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct ceph_mds_session_head* iov_base; } ;
struct ceph_msg {TYPE_1__ front; } ;
struct ceph_mds_session_head {int /*<<< orphan*/  seq; int /*<<< orphan*/  op; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_MSG_CLIENT_SESSION ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct ceph_msg* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static struct ceph_msg *FUNC4(u32 op, u64 seq)
{
	struct ceph_msg *msg;
	struct ceph_mds_session_head *h;

	msg = FUNC0(CEPH_MSG_CLIENT_SESSION, sizeof(*h), GFP_NOFS,
			   false);
	if (!msg) {
		FUNC3("create_session_msg ENOMEM creating msg\n");
		return NULL;
	}
	h = msg->front.iov_base;
	h->op = FUNC1(op);
	h->seq = FUNC2(seq);

	return msg;
}