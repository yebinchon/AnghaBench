
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;scalar_t__ tag; int result; void* host_scribble; TYPE_2__* device; } ;
struct TYPE_15__ {scalar_t__ phase; } ;
struct TYPE_14__ {int issue; } ;
struct TYPE_13__ {int queues; } ;
struct TYPE_16__ {int host_lock; TYPE_5__ scsi; TYPE_4__ queues; TYPE_3__ stats; } ;
struct TYPE_12__ {TYPE_1__* host; } ;
struct TYPE_11__ {scalar_t__ hostdata; } ;
typedef TYPE_6__ FAS216_Info ;


 int LOG_CONNECT ;
 scalar_t__ PHASE_IDLE ;
 int fas216_checkmagic (TYPE_6__*) ;
 int fas216_kick (TYPE_6__*) ;
 int fas216_log_command (TYPE_6__*,int ,struct scsi_cmnd*,char*,struct scsi_cmnd*) ;
 int fas216_log_target (TYPE_6__*,int ,int,char*,char*) ;
 scalar_t__ fas216_std_done ;
 int init_SCp (struct scsi_cmnd*) ;
 int queue_add_cmd_ordered (int *,struct scsi_cmnd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fas216_queue_command_lck(struct scsi_cmnd *SCpnt,
    void (*done)(struct scsi_cmnd *))
{
 FAS216_Info *info = (FAS216_Info *)SCpnt->device->host->hostdata;
 int result;

 fas216_checkmagic(info);

 fas216_log_command(info, LOG_CONNECT, SCpnt,
      "received command (%p)", SCpnt);

 SCpnt->scsi_done = done;
 SCpnt->host_scribble = (void *)fas216_std_done;
 SCpnt->result = 0;

 init_SCp(SCpnt);

 info->stats.queues += 1;
 SCpnt->tag = 0;

 spin_lock(&info->host_lock);





 result = !queue_add_cmd_ordered(&info->queues.issue, SCpnt);





 if (result == 0 && info->scsi.phase == PHASE_IDLE)
  fas216_kick(info);
 spin_unlock(&info->host_lock);

 fas216_log_target(info, LOG_CONNECT, -1, "queue %s",
  result ? "failure" : "success");

 return result;
}
