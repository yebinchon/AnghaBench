
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* request; } ;
struct TYPE_2__ {int rq_flags; } ;


 int RQF_DONTPREP ;
 int WARN_ON_ONCE (int) ;
 int blk_mq_requeue_request (TYPE_1__*,int) ;
 int scsi_mq_uninit_cmd (struct scsi_cmnd*) ;

__attribute__((used)) static void scsi_mq_requeue_cmd(struct scsi_cmnd *cmd)
{
 if (cmd->request->rq_flags & RQF_DONTPREP) {
  cmd->request->rq_flags &= ~RQF_DONTPREP;
  scsi_mq_uninit_cmd(cmd);
 } else {
  WARN_ON_ONCE(1);
 }
 blk_mq_requeue_request(cmd->request, 1);
}
