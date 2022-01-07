
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_scsi_req {int cmdsn; } ;
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int i_state; scalar_t__ unsolicited_data; int se_cmd; scalar_t__ sense_reason; int first_burst_len; struct iscsi_conn* conn; } ;


 int CMDSN_ERROR_CANNOT_RECOVER ;
 int CMDSN_LOWER_THAN_EXP ;
 int IMMEDIATE_DATA_ERL1_CRC_FAILURE ;
 int IMMEDIATE_DATA_NORMAL_OPERATION ;
 int ISTATE_REMOVE ;
 int cxgbit_handle_immediate_data (struct iscsi_cmd*,struct iscsi_scsi_req*,int ) ;
 int iscsit_add_cmd_to_immediate_queue (struct iscsi_cmd*,struct iscsi_conn*,int ) ;
 int iscsit_sequence_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*,int ) ;
 int iscsit_set_unsolicited_dataout (struct iscsi_cmd*) ;
 int target_put_sess_cmd (int *) ;

__attribute__((used)) static int
cxgbit_get_immediate_data(struct iscsi_cmd *cmd, struct iscsi_scsi_req *hdr,
     bool dump_payload)
{
 struct iscsi_conn *conn = cmd->conn;
 int cmdsn_ret = 0, immed_ret = IMMEDIATE_DATA_NORMAL_OPERATION;



 if (dump_payload)
  goto after_immediate_data;

 immed_ret = cxgbit_handle_immediate_data(cmd, hdr,
       cmd->first_burst_len);
after_immediate_data:
 if (immed_ret == IMMEDIATE_DATA_NORMAL_OPERATION) {





  cmdsn_ret = iscsit_sequence_cmd(conn, cmd,
      (unsigned char *)hdr,
      hdr->cmdsn);
  if (cmdsn_ret == CMDSN_ERROR_CANNOT_RECOVER)
   return -1;

  if (cmd->sense_reason || cmdsn_ret == CMDSN_LOWER_THAN_EXP) {
   target_put_sess_cmd(&cmd->se_cmd);
   return 0;
  } else if (cmd->unsolicited_data) {
   iscsit_set_unsolicited_dataout(cmd);
  }

 } else if (immed_ret == IMMEDIATE_DATA_ERL1_CRC_FAILURE) {
  cmd->i_state = ISTATE_REMOVE;
  iscsit_add_cmd_to_immediate_queue(cmd, conn, cmd->i_state);
 } else
  return -1;

 return 0;
}
