
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_tmr_req {int dummy; } ;
struct iscsi_session {TYPE_2__* se_sess; } ;
struct iscsi_node_attrib {int tmr_cold_reset; } ;
struct iscsi_conn {struct iscsi_session* sess; } ;
struct TYPE_4__ {TYPE_1__* se_node_acl; } ;
struct TYPE_3__ {int initiatorname; } ;


 struct iscsi_node_attrib* iscsit_tpg_get_node_attrib (struct iscsi_session*) ;
 int pr_err (char*,int ) ;

int iscsit_tmr_task_cold_reset(
 struct iscsi_conn *conn,
 struct iscsi_tmr_req *tmr_req,
 unsigned char *buf)
{
 struct iscsi_session *sess = conn->sess;
 struct iscsi_node_attrib *na = iscsit_tpg_get_node_attrib(sess);

 if (!na->tmr_cold_reset) {
  pr_err("TMR Opcode TARGET_COLD_RESET authorization"
   " failed for Initiator Node: %s\n",
   sess->se_sess->se_node_acl->initiatorname);
  return -1;
 }



 return 0;
}
