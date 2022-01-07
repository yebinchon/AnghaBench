
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int fast_abort; int abort_timeout; int lu_reset_timeout; int tgt_reset_timeout; int initial_r2t_en; int max_r2t; int imm_data_en; int first_burst; int max_burst; int pdu_inorder_en; int dataseq_inorder_en; int erl; int tpgt; int discovery_sess; int discovery_parent_type; int portal_type; int boot_target; int boot_nic; int boot_root; int initiatorname; int ifacename; int targetalias; int targetname; int password_in; int password; int username_in; int username; } ;
struct iscsi_conn {int ping_timeout; int recv_timeout; int max_recv_dlength; int max_xmit_dlength; int hdrdgst_en; int datadgst_en; int exp_statsn; int persistent_port; int local_ipaddr; int persistent_address; struct iscsi_session* session; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
typedef enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;


 int ENOSYS ;
 int iscsi_switch_str_param (int *,char*) ;
 int sscanf (char*,char*,int*) ;

int iscsi_set_param(struct iscsi_cls_conn *cls_conn,
      enum iscsi_param param, char *buf, int buflen)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_session *session = conn->session;
 int val;

 switch(param) {
 case 154:
  sscanf(buf, "%d", &session->fast_abort);
  break;
 case 164:
  sscanf(buf, "%d", &session->abort_timeout);
  break;
 case 146:
  sscanf(buf, "%d", &session->lu_reset_timeout);
  break;
 case 131:
  sscanf(buf, "%d", &session->tgt_reset_timeout);
  break;
 case 136:
  sscanf(buf, "%d", &conn->ping_timeout);
  break;
 case 134:
  sscanf(buf, "%d", &conn->recv_timeout);
  break;
 case 143:
  sscanf(buf, "%d", &conn->max_recv_dlength);
  break;
 case 142:
  sscanf(buf, "%d", &conn->max_xmit_dlength);
  break;
 case 152:
  sscanf(buf, "%d", &conn->hdrdgst_en);
  break;
 case 160:
  sscanf(buf, "%d", &conn->datadgst_en);
  break;
 case 149:
  sscanf(buf, "%d", &session->initial_r2t_en);
  break;
 case 144:
  sscanf(buf, "%hu", &session->max_r2t);
  break;
 case 150:
  sscanf(buf, "%d", &session->imm_data_en);
  break;
 case 153:
  sscanf(buf, "%d", &session->first_burst);
  break;
 case 145:
  sscanf(buf, "%d", &session->max_burst);
  break;
 case 139:
  sscanf(buf, "%d", &session->pdu_inorder_en);
  break;
 case 159:
  sscanf(buf, "%d", &session->dataseq_inorder_en);
  break;
 case 156:
  sscanf(buf, "%d", &session->erl);
  break;
 case 155:
  sscanf(buf, "%u", &conn->exp_statsn);
  break;
 case 129:
  return iscsi_switch_str_param(&session->username, buf);
 case 128:
  return iscsi_switch_str_param(&session->username_in, buf);
 case 141:
  return iscsi_switch_str_param(&session->password, buf);
 case 140:
  return iscsi_switch_str_param(&session->password_in, buf);
 case 132:
  return iscsi_switch_str_param(&session->targetname, buf);
 case 133:
  return iscsi_switch_str_param(&session->targetalias, buf);
 case 130:
  sscanf(buf, "%d", &session->tpgt);
  break;
 case 137:
  sscanf(buf, "%d", &conn->persistent_port);
  break;
 case 138:
  return iscsi_switch_str_param(&conn->persistent_address, buf);
 case 151:
  return iscsi_switch_str_param(&session->ifacename, buf);
 case 148:
  return iscsi_switch_str_param(&session->initiatorname, buf);
 case 162:
  return iscsi_switch_str_param(&session->boot_root, buf);
 case 163:
  return iscsi_switch_str_param(&session->boot_nic, buf);
 case 161:
  return iscsi_switch_str_param(&session->boot_target, buf);
 case 135:
  return iscsi_switch_str_param(&session->portal_type, buf);
 case 158:
  return iscsi_switch_str_param(&session->discovery_parent_type,
           buf);
 case 157:
  sscanf(buf, "%d", &val);
  session->discovery_sess = !!val;
  break;
 case 147:
  return iscsi_switch_str_param(&conn->local_ipaddr, buf);
 default:
  return -ENOSYS;
 }

 return 0;
}
