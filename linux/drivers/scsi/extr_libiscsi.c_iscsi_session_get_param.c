
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int fast_abort; int abort_timeout; int lu_reset_timeout; int tgt_reset_timeout; int initial_r2t_en; int imm_data_en; int first_burst; int max_burst; int pdu_inorder_en; int dataseq_inorder_en; int def_taskmgmt_tmo; int erl; char* targetname; char* targetalias; int tpgt; char* username; char* username_in; char* password; char* password_in; char* ifacename; char* initiatorname; char* boot_root; char* boot_nic; char* boot_target; int auto_snd_tgt_disable; int discovery_sess; char* portal_type; int chap_auth_en; int discovery_logout_en; int bidi_chap_en; int discovery_auth_optional; int time2wait; int time2retain; int tsid; int* isid; int discovery_parent_idx; char* discovery_parent_type; int max_r2t; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
typedef enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;


 int ENOSYS ;
 int sprintf (char*,char*,...) ;

int iscsi_session_get_param(struct iscsi_cls_session *cls_session,
       enum iscsi_param param, char *buf)
{
 struct iscsi_session *session = cls_session->dd_data;
 int len;

 switch(param) {
 case 148:
  len = sprintf(buf, "%d\n", session->fast_abort);
  break;
 case 165:
  len = sprintf(buf, "%d\n", session->abort_timeout);
  break;
 case 141:
  len = sprintf(buf, "%d\n", session->lu_reset_timeout);
  break;
 case 132:
  len = sprintf(buf, "%d\n", session->tgt_reset_timeout);
  break;
 case 144:
  len = sprintf(buf, "%d\n", session->initial_r2t_en);
  break;
 case 139:
  len = sprintf(buf, "%hu\n", session->max_r2t);
  break;
 case 145:
  len = sprintf(buf, "%d\n", session->imm_data_en);
  break;
 case 147:
  len = sprintf(buf, "%u\n", session->first_burst);
  break;
 case 140:
  len = sprintf(buf, "%u\n", session->max_burst);
  break;
 case 136:
  len = sprintf(buf, "%d\n", session->pdu_inorder_en);
  break;
 case 158:
  len = sprintf(buf, "%d\n", session->dataseq_inorder_en);
  break;
 case 157:
  len = sprintf(buf, "%d\n", session->def_taskmgmt_tmo);
  break;
 case 149:
  len = sprintf(buf, "%d\n", session->erl);
  break;
 case 133:
  len = sprintf(buf, "%s\n", session->targetname);
  break;
 case 134:
  len = sprintf(buf, "%s\n", session->targetalias);
  break;
 case 131:
  len = sprintf(buf, "%d\n", session->tpgt);
  break;
 case 129:
  len = sprintf(buf, "%s\n", session->username);
  break;
 case 128:
  len = sprintf(buf, "%s\n", session->username_in);
  break;
 case 138:
  len = sprintf(buf, "%s\n", session->password);
  break;
 case 137:
  len = sprintf(buf, "%s\n", session->password_in);
  break;
 case 146:
  len = sprintf(buf, "%s\n", session->ifacename);
  break;
 case 143:
  len = sprintf(buf, "%s\n", session->initiatorname);
  break;
 case 161:
  len = sprintf(buf, "%s\n", session->boot_root);
  break;
 case 162:
  len = sprintf(buf, "%s\n", session->boot_nic);
  break;
 case 160:
  len = sprintf(buf, "%s\n", session->boot_target);
  break;
 case 164:
  len = sprintf(buf, "%u\n", session->auto_snd_tgt_disable);
  break;
 case 150:
  len = sprintf(buf, "%u\n", session->discovery_sess);
  break;
 case 135:
  len = sprintf(buf, "%s\n", session->portal_type);
  break;
 case 159:
  len = sprintf(buf, "%u\n", session->chap_auth_en);
  break;
 case 153:
  len = sprintf(buf, "%u\n", session->discovery_logout_en);
  break;
 case 163:
  len = sprintf(buf, "%u\n", session->bidi_chap_en);
  break;
 case 154:
  len = sprintf(buf, "%u\n", session->discovery_auth_optional);
  break;
 case 155:
  len = sprintf(buf, "%d\n", session->time2wait);
  break;
 case 156:
  len = sprintf(buf, "%d\n", session->time2retain);
  break;
 case 130:
  len = sprintf(buf, "%u\n", session->tsid);
  break;
 case 142:
  len = sprintf(buf, "%02x%02x%02x%02x%02x%02x\n",
         session->isid[0], session->isid[1],
         session->isid[2], session->isid[3],
         session->isid[4], session->isid[5]);
  break;
 case 152:
  len = sprintf(buf, "%u\n", session->discovery_parent_idx);
  break;
 case 151:
  if (session->discovery_parent_type)
   len = sprintf(buf, "%s\n",
          session->discovery_parent_type);
  else
   len = sprintf(buf, "\n");
  break;
 default:
  return -ENOSYS;
 }

 return len;
}
