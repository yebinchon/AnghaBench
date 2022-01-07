
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int state; int request; } ;


 int SCMD_STATE_COMPLETE ;
 int blk_mq_complete_request (int ) ;
 int clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int trace_scsi_dispatch_cmd_done (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void scsi_mq_done(struct scsi_cmnd *cmd)
{
 if (unlikely(test_and_set_bit(SCMD_STATE_COMPLETE, &cmd->state)))
  return;
 trace_scsi_dispatch_cmd_done(cmd);







 if (unlikely(!blk_mq_complete_request(cmd->request)))
  clear_bit(SCMD_STATE_COMPLETE, &cmd->state);
}
