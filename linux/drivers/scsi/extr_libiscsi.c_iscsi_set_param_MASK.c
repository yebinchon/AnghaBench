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
struct iscsi_session {int fast_abort; int abort_timeout; int lu_reset_timeout; int tgt_reset_timeout; int initial_r2t_en; int max_r2t; int imm_data_en; int first_burst; int max_burst; int pdu_inorder_en; int dataseq_inorder_en; int erl; int tpgt; int discovery_sess; int /*<<< orphan*/  discovery_parent_type; int /*<<< orphan*/  portal_type; int /*<<< orphan*/  boot_target; int /*<<< orphan*/  boot_nic; int /*<<< orphan*/  boot_root; int /*<<< orphan*/  initiatorname; int /*<<< orphan*/  ifacename; int /*<<< orphan*/  targetalias; int /*<<< orphan*/  targetname; int /*<<< orphan*/  password_in; int /*<<< orphan*/  password; int /*<<< orphan*/  username_in; int /*<<< orphan*/  username; } ;
struct iscsi_conn {int ping_timeout; int recv_timeout; int max_recv_dlength; int max_xmit_dlength; int hdrdgst_en; int datadgst_en; int exp_statsn; int persistent_port; int /*<<< orphan*/  local_ipaddr; int /*<<< orphan*/  persistent_address; struct iscsi_session* session; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
typedef  enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;

/* Variables and functions */
 int ENOSYS ; 
#define  ISCSI_PARAM_ABORT_TMO 164 
#define  ISCSI_PARAM_BOOT_NIC 163 
#define  ISCSI_PARAM_BOOT_ROOT 162 
#define  ISCSI_PARAM_BOOT_TARGET 161 
#define  ISCSI_PARAM_DATADGST_EN 160 
#define  ISCSI_PARAM_DATASEQ_INORDER_EN 159 
#define  ISCSI_PARAM_DISCOVERY_PARENT_TYPE 158 
#define  ISCSI_PARAM_DISCOVERY_SESS 157 
#define  ISCSI_PARAM_ERL 156 
#define  ISCSI_PARAM_EXP_STATSN 155 
#define  ISCSI_PARAM_FAST_ABORT 154 
#define  ISCSI_PARAM_FIRST_BURST 153 
#define  ISCSI_PARAM_HDRDGST_EN 152 
#define  ISCSI_PARAM_IFACE_NAME 151 
#define  ISCSI_PARAM_IMM_DATA_EN 150 
#define  ISCSI_PARAM_INITIAL_R2T_EN 149 
#define  ISCSI_PARAM_INITIATOR_NAME 148 
#define  ISCSI_PARAM_LOCAL_IPADDR 147 
#define  ISCSI_PARAM_LU_RESET_TMO 146 
#define  ISCSI_PARAM_MAX_BURST 145 
#define  ISCSI_PARAM_MAX_R2T 144 
#define  ISCSI_PARAM_MAX_RECV_DLENGTH 143 
#define  ISCSI_PARAM_MAX_XMIT_DLENGTH 142 
#define  ISCSI_PARAM_PASSWORD 141 
#define  ISCSI_PARAM_PASSWORD_IN 140 
#define  ISCSI_PARAM_PDU_INORDER_EN 139 
#define  ISCSI_PARAM_PERSISTENT_ADDRESS 138 
#define  ISCSI_PARAM_PERSISTENT_PORT 137 
#define  ISCSI_PARAM_PING_TMO 136 
#define  ISCSI_PARAM_PORTAL_TYPE 135 
#define  ISCSI_PARAM_RECV_TMO 134 
#define  ISCSI_PARAM_TARGET_ALIAS 133 
#define  ISCSI_PARAM_TARGET_NAME 132 
#define  ISCSI_PARAM_TGT_RESET_TMO 131 
#define  ISCSI_PARAM_TPGT 130 
#define  ISCSI_PARAM_USERNAME 129 
#define  ISCSI_PARAM_USERNAME_IN 128 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int*) ; 

int FUNC2(struct iscsi_cls_conn *cls_conn,
		    enum iscsi_param param, char *buf, int buflen)
{
	struct iscsi_conn *conn = cls_conn->dd_data;
	struct iscsi_session *session = conn->session;
	int val;

	switch(param) {
	case ISCSI_PARAM_FAST_ABORT:
		FUNC1(buf, "%d", &session->fast_abort);
		break;
	case ISCSI_PARAM_ABORT_TMO:
		FUNC1(buf, "%d", &session->abort_timeout);
		break;
	case ISCSI_PARAM_LU_RESET_TMO:
		FUNC1(buf, "%d", &session->lu_reset_timeout);
		break;
	case ISCSI_PARAM_TGT_RESET_TMO:
		FUNC1(buf, "%d", &session->tgt_reset_timeout);
		break;
	case ISCSI_PARAM_PING_TMO:
		FUNC1(buf, "%d", &conn->ping_timeout);
		break;
	case ISCSI_PARAM_RECV_TMO:
		FUNC1(buf, "%d", &conn->recv_timeout);
		break;
	case ISCSI_PARAM_MAX_RECV_DLENGTH:
		FUNC1(buf, "%d", &conn->max_recv_dlength);
		break;
	case ISCSI_PARAM_MAX_XMIT_DLENGTH:
		FUNC1(buf, "%d", &conn->max_xmit_dlength);
		break;
	case ISCSI_PARAM_HDRDGST_EN:
		FUNC1(buf, "%d", &conn->hdrdgst_en);
		break;
	case ISCSI_PARAM_DATADGST_EN:
		FUNC1(buf, "%d", &conn->datadgst_en);
		break;
	case ISCSI_PARAM_INITIAL_R2T_EN:
		FUNC1(buf, "%d", &session->initial_r2t_en);
		break;
	case ISCSI_PARAM_MAX_R2T:
		FUNC1(buf, "%hu", &session->max_r2t);
		break;
	case ISCSI_PARAM_IMM_DATA_EN:
		FUNC1(buf, "%d", &session->imm_data_en);
		break;
	case ISCSI_PARAM_FIRST_BURST:
		FUNC1(buf, "%d", &session->first_burst);
		break;
	case ISCSI_PARAM_MAX_BURST:
		FUNC1(buf, "%d", &session->max_burst);
		break;
	case ISCSI_PARAM_PDU_INORDER_EN:
		FUNC1(buf, "%d", &session->pdu_inorder_en);
		break;
	case ISCSI_PARAM_DATASEQ_INORDER_EN:
		FUNC1(buf, "%d", &session->dataseq_inorder_en);
		break;
	case ISCSI_PARAM_ERL:
		FUNC1(buf, "%d", &session->erl);
		break;
	case ISCSI_PARAM_EXP_STATSN:
		FUNC1(buf, "%u", &conn->exp_statsn);
		break;
	case ISCSI_PARAM_USERNAME:
		return FUNC0(&session->username, buf);
	case ISCSI_PARAM_USERNAME_IN:
		return FUNC0(&session->username_in, buf);
	case ISCSI_PARAM_PASSWORD:
		return FUNC0(&session->password, buf);
	case ISCSI_PARAM_PASSWORD_IN:
		return FUNC0(&session->password_in, buf);
	case ISCSI_PARAM_TARGET_NAME:
		return FUNC0(&session->targetname, buf);
	case ISCSI_PARAM_TARGET_ALIAS:
		return FUNC0(&session->targetalias, buf);
	case ISCSI_PARAM_TPGT:
		FUNC1(buf, "%d", &session->tpgt);
		break;
	case ISCSI_PARAM_PERSISTENT_PORT:
		FUNC1(buf, "%d", &conn->persistent_port);
		break;
	case ISCSI_PARAM_PERSISTENT_ADDRESS:
		return FUNC0(&conn->persistent_address, buf);
	case ISCSI_PARAM_IFACE_NAME:
		return FUNC0(&session->ifacename, buf);
	case ISCSI_PARAM_INITIATOR_NAME:
		return FUNC0(&session->initiatorname, buf);
	case ISCSI_PARAM_BOOT_ROOT:
		return FUNC0(&session->boot_root, buf);
	case ISCSI_PARAM_BOOT_NIC:
		return FUNC0(&session->boot_nic, buf);
	case ISCSI_PARAM_BOOT_TARGET:
		return FUNC0(&session->boot_target, buf);
	case ISCSI_PARAM_PORTAL_TYPE:
		return FUNC0(&session->portal_type, buf);
	case ISCSI_PARAM_DISCOVERY_PARENT_TYPE:
		return FUNC0(&session->discovery_parent_type,
					      buf);
	case ISCSI_PARAM_DISCOVERY_SESS:
		FUNC1(buf, "%d", &val);
		session->discovery_sess = !!val;
		break;
	case ISCSI_PARAM_LOCAL_IPADDR:
		return FUNC0(&conn->local_ipaddr, buf);
	default:
		return -ENOSYS;
	}

	return 0;
}