
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_scsi_req {int cmdsn; } ;
struct TYPE_2__ {scalar_t__ data_length; } ;
struct iscsi_cmd {int i_state; int conn; scalar_t__ unsolicited_data; TYPE_1__ se_cmd; scalar_t__ sense_reason; int first_burst_len; scalar_t__ write_data_done; } ;


 int CMDSN_ERROR_CANNOT_RECOVER ;
 int CMDSN_LOWER_THAN_EXP ;
 int IMMEDIATE_DATA_CANNOT_RECOVER ;
 int IMMEDIATE_DATA_ERL1_CRC_FAILURE ;
 int IMMEDIATE_DATA_NORMAL_OPERATION ;
 int ISTATE_REMOVE ;
 int iscsit_add_cmd_to_immediate_queue (struct iscsi_cmd*,int ,int ) ;
 int iscsit_dump_data_payload (int ,int ,int) ;
 int iscsit_handle_immediate_data (struct iscsi_cmd*,struct iscsi_scsi_req*,int ) ;
 int iscsit_sequence_cmd (int ,struct iscsi_cmd*,unsigned char*,int ) ;
 int iscsit_set_unsolicited_dataout (struct iscsi_cmd*) ;
 int min (scalar_t__,int ) ;
 int pr_debug (char*,...) ;
 int target_put_sess_cmd (TYPE_1__*) ;

__attribute__((used)) static int
iscsit_get_immediate_data(struct iscsi_cmd *cmd, struct iscsi_scsi_req *hdr,
     bool dump_payload)
{
 int cmdsn_ret = 0, immed_ret = IMMEDIATE_DATA_NORMAL_OPERATION;
 int rc;




 if (dump_payload) {
  u32 length = min(cmd->se_cmd.data_length - cmd->write_data_done,
     cmd->first_burst_len);

  pr_debug("Dumping min(%d - %d, %d) = %d bytes of immediate data\n",
    cmd->se_cmd.data_length, cmd->write_data_done,
    cmd->first_burst_len, length);
  rc = iscsit_dump_data_payload(cmd->conn, length, 1);
  pr_debug("Finished dumping immediate data\n");
  if (rc < 0)
   immed_ret = IMMEDIATE_DATA_CANNOT_RECOVER;
 } else {
  immed_ret = iscsit_handle_immediate_data(cmd, hdr,
        cmd->first_burst_len);
 }

 if (immed_ret == IMMEDIATE_DATA_NORMAL_OPERATION) {





  cmdsn_ret = iscsit_sequence_cmd(cmd->conn, cmd,
     (unsigned char *)hdr, hdr->cmdsn);
  if (cmdsn_ret == CMDSN_ERROR_CANNOT_RECOVER)
   return -1;

  if (cmd->sense_reason || cmdsn_ret == CMDSN_LOWER_THAN_EXP) {
   target_put_sess_cmd(&cmd->se_cmd);

   return 0;
  } else if (cmd->unsolicited_data)
   iscsit_set_unsolicited_dataout(cmd);

 } else if (immed_ret == IMMEDIATE_DATA_ERL1_CRC_FAILURE) {
  cmd->i_state = ISTATE_REMOVE;
  iscsit_add_cmd_to_immediate_queue(cmd, cmd->conn, cmd->i_state);
 } else
  return -1;

 return 0;
}
