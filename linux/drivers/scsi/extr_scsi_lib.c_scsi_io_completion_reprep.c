
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct request_queue {int dummy; } ;


 int scsi_mq_requeue_cmd (struct scsi_cmnd*) ;

__attribute__((used)) static void scsi_io_completion_reprep(struct scsi_cmnd *cmd,
          struct request_queue *q)
{

 scsi_mq_requeue_cmd(cmd);
}
