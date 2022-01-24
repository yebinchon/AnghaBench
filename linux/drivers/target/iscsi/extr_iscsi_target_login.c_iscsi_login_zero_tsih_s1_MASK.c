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
struct iscsi_session {int session_index; struct iscsi_session* sess_ops; int /*<<< orphan*/  se_sess; int /*<<< orphan*/  max_cmd_sn; int /*<<< orphan*/  creation_time; int /*<<< orphan*/  time2retain_timer; int /*<<< orphan*/  ttt_lock; int /*<<< orphan*/  session_usage_lock; int /*<<< orphan*/  cr_i_lock; int /*<<< orphan*/  cr_a_lock; int /*<<< orphan*/  conn_lock; int /*<<< orphan*/  cmdsn_mutex; int /*<<< orphan*/  session_waiting_on_uc_comp; int /*<<< orphan*/  session_wait_comp; int /*<<< orphan*/  reinstatement_comp; int /*<<< orphan*/  async_msg_comp; int /*<<< orphan*/  cr_inactive_list; int /*<<< orphan*/  cr_active_list; int /*<<< orphan*/  sess_ooo_cmdsn_list; int /*<<< orphan*/  sess_conn_list; int /*<<< orphan*/  exp_cmd_sn; int /*<<< orphan*/  isid; int /*<<< orphan*/  init_task_tag; } ;
struct iscsi_sess_ops {int dummy; } ;
struct iscsi_login_req {int /*<<< orphan*/  cmdsn; int /*<<< orphan*/  isid; int /*<<< orphan*/  itt; int /*<<< orphan*/  cid; } ;
struct iscsi_conn {int /*<<< orphan*/ * sess; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ISCSI_LOGIN_STATUS_NO_RESOURCES ; 
 int /*<<< orphan*/  ISCSI_STATUS_CLS_TARGET_ERR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_PROT_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct iscsi_session*,struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iscsit_handle_time2retain_timeout ; 
 int /*<<< orphan*/  FUNC9 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct iscsi_session*) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  sess_ida ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(
	struct iscsi_conn *conn,
	unsigned char *buf)
{
	struct iscsi_session *sess = NULL;
	struct iscsi_login_req *pdu = (struct iscsi_login_req *)buf;
	int ret;

	sess = FUNC11(sizeof(struct iscsi_session), GFP_KERNEL);
	if (!sess) {
		FUNC9(conn, ISCSI_STATUS_CLS_TARGET_ERR,
				ISCSI_LOGIN_STATUS_NO_RESOURCES);
		FUNC14("Could not allocate memory for session\n");
		return -ENOMEM;
	}

	if (FUNC8(sess, conn, pdu->cid))
		goto free_sess;

	sess->init_task_tag	= pdu->itt;
	FUNC12(&sess->isid, pdu->isid, 6);
	sess->exp_cmd_sn	= FUNC3(pdu->cmdsn);
	FUNC0(&sess->sess_conn_list);
	FUNC0(&sess->sess_ooo_cmdsn_list);
	FUNC0(&sess->cr_active_list);
	FUNC0(&sess->cr_inactive_list);
	FUNC7(&sess->async_msg_comp);
	FUNC7(&sess->reinstatement_comp);
	FUNC7(&sess->session_wait_comp);
	FUNC7(&sess->session_waiting_on_uc_comp);
	FUNC13(&sess->cmdsn_mutex);
	FUNC15(&sess->conn_lock);
	FUNC15(&sess->cr_a_lock);
	FUNC15(&sess->cr_i_lock);
	FUNC15(&sess->session_usage_lock);
	FUNC15(&sess->ttt_lock);

	FUNC16(&sess->time2retain_timer,
		    iscsit_handle_time2retain_timeout, 0);

	ret = FUNC5(&sess_ida, GFP_KERNEL);
	if (ret < 0) {
		FUNC14("Session ID allocation failed %d\n", ret);
		FUNC9(conn, ISCSI_STATUS_CLS_TARGET_ERR,
				ISCSI_LOGIN_STATUS_NO_RESOURCES);
		goto free_sess;
	}

	sess->session_index = ret;
	sess->creation_time = FUNC4();
	/*
	 * The FFP CmdSN window values will be allocated from the TPG's
	 * Initiator Node's ACL once the login has been successfully completed.
	 */
	FUNC2(&sess->max_cmd_sn, FUNC3(pdu->cmdsn));

	sess->sess_ops = FUNC11(sizeof(struct iscsi_sess_ops), GFP_KERNEL);
	if (!sess->sess_ops) {
		FUNC9(conn, ISCSI_STATUS_CLS_TARGET_ERR,
				ISCSI_LOGIN_STATUS_NO_RESOURCES);
		FUNC14("Unable to allocate memory for"
				" struct iscsi_sess_ops.\n");
		goto free_id;
	}

	sess->se_sess = FUNC17(TARGET_PROT_NORMAL);
	if (FUNC1(sess->se_sess)) {
		FUNC9(conn, ISCSI_STATUS_CLS_TARGET_ERR,
				ISCSI_LOGIN_STATUS_NO_RESOURCES);
		goto free_ops;
	}

	return 0;

free_ops:
	FUNC10(sess->sess_ops);
free_id:
	FUNC6(&sess_ida, sess->session_index);
free_sess:
	FUNC10(sess);
	conn->sess = NULL;
	return -ENOMEM;
}