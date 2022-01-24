#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct se_portal_group {int /*<<< orphan*/  session_lock; } ;
struct iscsi_np {int dummy; } ;
struct iscsi_conn {TYPE_2__* conn_transport; int /*<<< orphan*/ * sock; int /*<<< orphan*/ * param_list; scalar_t__ conn_rx_hash; scalar_t__ conn_tx_hash; TYPE_3__* sess; TYPE_1__* tpg; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_8__ {scalar_t__ session_state; int /*<<< orphan*/  conn_lock; int /*<<< orphan*/  session_continuation; struct TYPE_8__* sess_ops; int /*<<< orphan*/  session_index; int /*<<< orphan*/  se_sess; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* iscsit_free_conn ) (struct iscsi_conn*) ;int /*<<< orphan*/  (* iscsit_wait_conn ) (struct iscsi_conn*) ;} ;
struct TYPE_6__ {struct se_portal_group tpg_se_tpg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_LOGIN_STATUS_INIT_ERR ; 
 int /*<<< orphan*/  ISCSI_STATUS_CLS_INITIATOR_ERR ; 
 scalar_t__ TARG_SESS_STATE_FAILED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct crypto_ahash* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_np*) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  sess_ida ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC18 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

void FUNC20(struct iscsi_conn *conn,
		struct iscsi_np *np, bool zero_tsih, bool new_sess)
{
	if (!new_sess)
		goto old_sess_out;

	FUNC13("iSCSI Login negotiation failed.\n");
	FUNC8(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
				   ISCSI_LOGIN_STATUS_INIT_ERR);
	if (!zero_tsih || !conn->sess)
		goto old_sess_out;

	FUNC19(conn->sess->se_sess);
	FUNC4(&sess_ida, conn->sess->session_index);
	FUNC12(conn->sess->sess_ops);
	FUNC12(conn->sess);
	conn->sess = NULL;

old_sess_out:
	FUNC6(np);
	/*
	 * If login negotiation fails check if the Time2Retain timer
	 * needs to be restarted.
	 */
	if (!zero_tsih && conn->sess) {
		FUNC15(&conn->sess->conn_lock);
		if (conn->sess->session_state == TARG_SESS_STATE_FAILED) {
			struct se_portal_group *se_tpg =
					&conn->tpg->tpg_se_tpg;

			FUNC1(&conn->sess->session_continuation, 0);
			FUNC16(&conn->sess->conn_lock);
			FUNC15(&se_tpg->session_lock);
			FUNC11(conn->sess);
			FUNC16(&se_tpg->session_lock);
		} else
			FUNC16(&conn->sess->conn_lock);
		FUNC9(conn->sess);
	}

	FUNC0(conn->conn_tx_hash);
	if (conn->conn_rx_hash) {
		struct crypto_ahash *tfm;

		tfm = FUNC2(conn->conn_rx_hash);
		FUNC0(conn->conn_rx_hash);
		FUNC3(tfm);
	}

	if (conn->param_list) {
		FUNC5(conn->param_list);
		conn->param_list = NULL;
	}
	FUNC7(conn);

	if (conn->sock) {
		FUNC14(conn->sock);
		conn->sock = NULL;
	}

	if (conn->conn_transport->iscsit_wait_conn)
		conn->conn_transport->iscsit_wait_conn(conn);

	if (conn->conn_transport->iscsit_free_conn)
		conn->conn_transport->iscsit_free_conn(conn);

	FUNC10(conn);
}