#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct timer_list {int dummy; } ;
struct iscsi_session {TYPE_3__* tpg; int /*<<< orphan*/  isid; TYPE_1__* sess_ops; } ;
struct iscsi_conn {int nopin_response_timer_flags; int /*<<< orphan*/  nopin_timer_lock; int /*<<< orphan*/  cid; struct iscsi_session* sess; } ;
struct TYPE_6__ {scalar_t__ tpgt; TYPE_2__* tpg_tiqn; } ;
struct TYPE_5__ {int /*<<< orphan*/  tiqn; } ;
struct TYPE_4__ {int /*<<< orphan*/  InitiatorName; } ;

/* Variables and functions */
 int ISCSI_TF_RUNNING ; 
 int ISCSI_TF_STOP ; 
 struct iscsi_conn* conn ; 
 struct iscsi_conn* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  nopin_response_timer ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct timer_list *t)
{
	struct iscsi_conn *conn = FUNC0(conn, t, nopin_response_timer);
	struct iscsi_session *sess = conn->sess;

	FUNC4(conn);

	FUNC6(&conn->nopin_timer_lock);
	if (conn->nopin_response_timer_flags & ISCSI_TF_STOP) {
		FUNC7(&conn->nopin_timer_lock);
		FUNC2(conn);
		return;
	}

	FUNC5("Did not receive response to NOPIN on CID: %hu, failing"
		" connection for I_T Nexus %s,i,0x%6phN,%s,t,0x%02x\n",
		conn->cid, sess->sess_ops->InitiatorName, sess->isid,
		sess->tpg->tpg_tiqn->tiqn, (u32)sess->tpg->tpgt);
	conn->nopin_response_timer_flags &= ~ISCSI_TF_RUNNING;
	FUNC7(&conn->nopin_timer_lock);

	FUNC3(sess);
	FUNC1(conn, 0);
	FUNC2(conn);
}