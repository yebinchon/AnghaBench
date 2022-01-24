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
typedef  int /*<<< orphan*/  u64 ;
struct ceph_msg {int dummy; } ;
struct ceph_mds_session {int /*<<< orphan*/  s_con; int /*<<< orphan*/  s_state; int /*<<< orphan*/  s_mds; } ;
struct ceph_mds_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_SESSION_FLUSHMSG_ACK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ceph_msg* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ceph_mds_client *mdsc,
			     struct ceph_mds_session *session, u64 seq)
{
	struct ceph_msg *msg;

	FUNC3("send_flushmsg_ack to mds%d (%s)s seq %lld\n",
	     session->s_mds, FUNC1(session->s_state), seq);
	msg = FUNC2(CEPH_SESSION_FLUSHMSG_ACK, seq);
	if (!msg)
		return -ENOMEM;
	FUNC0(&session->s_con, msg);
	return 0;
}