
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* request; int result; } ;
struct TYPE_2__ {int cmd_flags; } ;


 scalar_t__ CHECK_CONDITION ;
 int COMMAND_COMPLETE ;






 int REQ_FAILFAST_DEV ;
 int REQ_FAILFAST_DRIVER ;
 int REQ_FAILFAST_TRANSPORT ;
 scalar_t__ RESERVATION_CONFLICT ;
 scalar_t__ blk_rq_is_passthrough (TYPE_1__*) ;
 int host_byte (int ) ;
 int msg_byte (int ) ;
 scalar_t__ status_byte (int ) ;

int scsi_noretry_cmd(struct scsi_cmnd *scmd)
{
 switch (host_byte(scmd->result)) {
 case 131:
  break;
 case 128:
  goto check_type;
 case 133:
  return (scmd->request->cmd_flags & REQ_FAILFAST_TRANSPORT);
 case 130:
  return (scmd->request->cmd_flags & REQ_FAILFAST_DEV);
 case 132:
  if (msg_byte(scmd->result) == COMMAND_COMPLETE &&
      status_byte(scmd->result) == RESERVATION_CONFLICT)
   return 0;

 case 129:
  return (scmd->request->cmd_flags & REQ_FAILFAST_DRIVER);
 }

 if (status_byte(scmd->result) != CHECK_CONDITION)
  return 0;

check_type:




 if (scmd->request->cmd_flags & REQ_FAILFAST_DEV ||
     blk_rq_is_passthrough(scmd->request))
  return 1;
 else
  return 0;
}
