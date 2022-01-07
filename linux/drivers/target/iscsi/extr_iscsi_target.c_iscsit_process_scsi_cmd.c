
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_scsi_req {int exp_statsn; int cmdsn; } ;
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {scalar_t__ sense_reason; int se_cmd; scalar_t__ unsolicited_data; int immediate_data; } ;


 int CMDSN_ERROR_CANNOT_RECOVER ;
 int CMDSN_LOWER_THAN_EXP ;
 int be32_to_cpu (int ) ;
 int iscsit_ack_from_expstatsn (struct iscsi_conn*,int ) ;
 int iscsit_sequence_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*,int ) ;
 int iscsit_set_unsolicited_dataout (struct iscsi_cmd*) ;
 int target_put_sess_cmd (int *) ;
 scalar_t__ transport_generic_new_cmd (int *) ;

int iscsit_process_scsi_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
       struct iscsi_scsi_req *hdr)
{
 int cmdsn_ret = 0;
 if (!cmd->immediate_data) {
  cmdsn_ret = iscsit_sequence_cmd(conn, cmd,
     (unsigned char *)hdr, hdr->cmdsn);
  if (cmdsn_ret == CMDSN_ERROR_CANNOT_RECOVER)
   return -1;
  else if (cmdsn_ret == CMDSN_LOWER_THAN_EXP) {
   target_put_sess_cmd(&cmd->se_cmd);
   return 0;
  }
 }

 iscsit_ack_from_expstatsn(conn, be32_to_cpu(hdr->exp_statsn));




 if (!cmd->immediate_data) {
  if (!cmd->sense_reason && cmd->unsolicited_data)
   iscsit_set_unsolicited_dataout(cmd);
  if (!cmd->sense_reason)
   return 0;

  target_put_sess_cmd(&cmd->se_cmd);
  return 0;
 }






 if (cmd->sense_reason)
  return 1;




 cmd->sense_reason = transport_generic_new_cmd(&cmd->se_cmd);
 if (cmd->sense_reason)
  return 1;

 return 0;
}
