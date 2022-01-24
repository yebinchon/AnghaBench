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
struct iscsi_session {TYPE_1__* sess_ops; int /*<<< orphan*/  session_fall_back_to_erl0; int /*<<< orphan*/  session_reinstatement; } ;
struct iscsi_conn {int /*<<< orphan*/  cid; struct iscsi_session* sess; } ;
struct TYPE_2__ {int ErrorRecoveryLevel; int /*<<< orphan*/  InitiatorName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iscsi_conn *conn)
{
	struct iscsi_session *sess = conn->sess;

	if ((sess->sess_ops->ErrorRecoveryLevel == 2) &&
	    !FUNC0(&sess->session_reinstatement) &&
	    !FUNC0(&sess->session_fall_back_to_erl0))
		FUNC2(conn);
	else {
		FUNC3("Performing cleanup for failed iSCSI"
			" Connection ID: %hu from %s\n", conn->cid,
			sess->sess_ops->InitiatorName);
		FUNC1(conn);
	}
}