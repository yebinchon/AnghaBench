
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct iscsi_conn {TYPE_1__* sess; } ;
struct iscsi_cmd {int i_state; } ;
typedef int __be32 ;
struct TYPE_4__ {int cmdsn_mutex; int sess_ooo_cmdsn_list; } ;


 int CMDSN_ERROR_CANNOT_RECOVER ;




 int ISCSI_REASON_BOOKMARK_NO_RESOURCES ;
 int ISTATE_REMOVE ;
 int be32_to_cpu (int ) ;
 int iscsit_add_cmd_to_immediate_queue (struct iscsi_cmd*,struct iscsi_conn*,int ) ;
 int iscsit_check_received_cmdsn (TYPE_1__*,int ) ;
 int iscsit_execute_cmd (struct iscsi_cmd*,int ) ;
 int iscsit_execute_ooo_cmdsns (TYPE_1__*) ;
 int iscsit_handle_ooo_cmdsn (TYPE_1__*,struct iscsi_cmd*,int ) ;
 int iscsit_reject_cmd (struct iscsi_cmd*,int ,unsigned char*) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iscsit_sequence_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
   unsigned char *buf, __be32 cmdsn)
{
 int ret, cmdsn_ret;
 bool reject = 0;
 u8 reason = ISCSI_REASON_BOOKMARK_NO_RESOURCES;

 mutex_lock(&conn->sess->cmdsn_mutex);

 cmdsn_ret = iscsit_check_received_cmdsn(conn->sess, be32_to_cpu(cmdsn));
 switch (cmdsn_ret) {
 case 128:
  ret = iscsit_execute_cmd(cmd, 0);
  if ((ret >= 0) && !list_empty(&conn->sess->sess_ooo_cmdsn_list))
   iscsit_execute_ooo_cmdsns(conn->sess);
  else if (ret < 0) {
   reject = 1;
   ret = CMDSN_ERROR_CANNOT_RECOVER;
  }
  break;
 case 131:
  ret = iscsit_handle_ooo_cmdsn(conn->sess, cmd, be32_to_cpu(cmdsn));
  if (ret < 0) {
   reject = 1;
   ret = CMDSN_ERROR_CANNOT_RECOVER;
   break;
  }
  ret = 131;
  break;
 case 130:
 case 129:
 default:
  cmd->i_state = ISTATE_REMOVE;
  iscsit_add_cmd_to_immediate_queue(cmd, conn, cmd->i_state);





  ret = 130;
  break;
 }
 mutex_unlock(&conn->sess->cmdsn_mutex);

 if (reject)
  iscsit_reject_cmd(cmd, reason, buf);

 return ret;
}
