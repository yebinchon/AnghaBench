
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iscsi_session {TYPE_4__* se_sess; TYPE_3__* tpg; TYPE_2__* sess_ops; scalar_t__ tsih; } ;
struct iscsi_param {int value; } ;
struct iscsi_node_attrib {int default_erl; } ;
struct iscsi_conn {int param_list; TYPE_1__* conn_transport; TYPE_3__* tpg; struct iscsi_session* sess; } ;
struct TYPE_8__ {int sup_prot_ops; } ;
struct TYPE_7__ {int tpgt; int param_list; scalar_t__ ntsih; } ;
struct TYPE_6__ {scalar_t__ SessionType; } ;
struct TYPE_5__ {scalar_t__ transport_type; } ;


 scalar_t__ ISCSI_INFINIBAND ;
 int ISCSI_LOGIN_STATUS_NO_RESOURCES ;
 int ISCSI_STATUS_CLS_TARGET_ERR ;
 unsigned long PAGE_SIZE ;
 int TARGET_PROT_DOUT_INSERT ;
 int TARGET_PROT_DOUT_PASS ;
 int TARGET_PROT_DOUT_STRIP ;
 scalar_t__ iscsi_change_param_sprintf (struct iscsi_conn*,char*,...) ;
 scalar_t__ iscsi_copy_param_list (int *,int ,int) ;
 struct iscsi_param* iscsi_find_param_from_key (char*,int ) ;
 int iscsi_set_keys_irrelevant_for_discovery (int ) ;
 int iscsi_set_keys_to_negotiate (int ,int) ;
 struct iscsi_node_attrib* iscsit_tpg_get_node_attrib (struct iscsi_session*) ;
 int iscsit_tx_login_rsp (struct iscsi_conn*,int ,int ) ;
 int kstrtoul (int ,int ,unsigned long*) ;
 int pr_debug (char*) ;
 int pr_warn (char*,unsigned long) ;

__attribute__((used)) static int iscsi_login_zero_tsih_s2(
 struct iscsi_conn *conn)
{
 struct iscsi_node_attrib *na;
 struct iscsi_session *sess = conn->sess;
 bool iser = 0;

 sess->tpg = conn->tpg;





 sess->tsih = ++sess->tpg->ntsih;
 if (!sess->tsih)
  sess->tsih = ++sess->tpg->ntsih;




 if (iscsi_copy_param_list(&conn->param_list,
    conn->tpg->param_list, 1) < 0) {
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_TARGET_ERR,
    ISCSI_LOGIN_STATUS_NO_RESOURCES);
  return -1;
 }

 if (conn->conn_transport->transport_type == ISCSI_INFINIBAND)
  iser = 1;

 iscsi_set_keys_to_negotiate(conn->param_list, iser);

 if (sess->sess_ops->SessionType)
  return iscsi_set_keys_irrelevant_for_discovery(
    conn->param_list);

 na = iscsit_tpg_get_node_attrib(sess);
 if (iscsi_change_param_sprintf(conn, "TargetPortalGroupTag=%hu", sess->tpg->tpgt))
  return -1;






 if (iscsi_change_param_sprintf(conn, "ErrorRecoveryLevel=%d", na->default_erl))
  return -1;




 if (iser) {
  struct iscsi_param *param;
  unsigned long mrdsl, off;
  int rc;

  if (iscsi_change_param_sprintf(conn, "RDMAExtensions=Yes"))
   return -1;





  param = iscsi_find_param_from_key("MaxRecvDataSegmentLength",
        conn->param_list);
  if (!param) {
   iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_TARGET_ERR,
    ISCSI_LOGIN_STATUS_NO_RESOURCES);
   return -1;
  }
  rc = kstrtoul(param->value, 0, &mrdsl);
  if (rc < 0) {
   iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_TARGET_ERR,
    ISCSI_LOGIN_STATUS_NO_RESOURCES);
   return -1;
  }
  off = mrdsl % PAGE_SIZE;
  if (!off)
   goto check_prot;

  if (mrdsl < PAGE_SIZE)
   mrdsl = PAGE_SIZE;
  else
   mrdsl -= off;

  pr_warn("Aligning ISER MaxRecvDataSegmentLength: %lu down"
   " to PAGE_SIZE\n", mrdsl);

  if (iscsi_change_param_sprintf(conn, "MaxRecvDataSegmentLength=%lu\n", mrdsl))
   return -1;




check_prot:
  if (sess->se_sess->sup_prot_ops &
     (TARGET_PROT_DOUT_STRIP | TARGET_PROT_DOUT_PASS |
      TARGET_PROT_DOUT_INSERT)) {

   if (iscsi_change_param_sprintf(conn, "ImmediateData=No"))
    return -1;

   if (iscsi_change_param_sprintf(conn, "InitialR2T=Yes"))
    return -1;

   pr_debug("Forcing ImmediateData=No + InitialR2T=Yes for"
     " T10-PI enabled ISER session\n");
  }
 }

 return 0;
}
