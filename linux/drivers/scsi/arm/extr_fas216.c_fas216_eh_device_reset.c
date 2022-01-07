
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct scsi_cmnd {int * host_scribble; TYPE_4__* device; } ;
struct TYPE_24__ {TYPE_8__* device; } ;
struct TYPE_23__ {int id; } ;
struct TYPE_22__ {TYPE_6__* device; } ;
struct TYPE_21__ {int id; } ;
struct TYPE_20__ {int disconnected; int issue; } ;
struct TYPE_19__ {int id; TYPE_1__* host; } ;
struct TYPE_18__ {TYPE_2__* device; } ;
struct TYPE_17__ {scalar_t__ id; } ;
struct TYPE_16__ {scalar_t__ hostdata; } ;
struct TYPE_14__ {scalar_t__ phase; int disconnectable; } ;
struct TYPE_15__ {int rst_dev_status; int host_lock; struct scsi_cmnd* rstSCpnt; int eh_timer; int eh_wait; TYPE_10__ scsi; int busyluns; TYPE_9__* reqSCpnt; TYPE_7__* origSCpnt; TYPE_5__ queues; TYPE_3__* SCpnt; } ;
typedef TYPE_11__ FAS216_Info ;


 int FAILED ;
 int HZ ;
 int LOG_ERROR ;
 scalar_t__ PHASE_IDLE ;
 int SUCCESS ;
 int clear_bit (int,int ) ;
 int del_timer_sync (int *) ;
 scalar_t__ fas216_devicereset_done ;
 int fas216_kick (TYPE_11__*) ;
 int fas216_log (TYPE_11__*,int ,char*,...) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int queue_remove_all_target (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event (int ,int) ;

int fas216_eh_device_reset(struct scsi_cmnd *SCpnt)
{
 FAS216_Info *info = (FAS216_Info *)SCpnt->device->host->hostdata;
 unsigned long flags;
 int i, res = FAILED, target = SCpnt->device->id;

 fas216_log(info, LOG_ERROR, "device reset for target %d", target);

 spin_lock_irqsave(&info->host_lock, flags);

 do {






  if (info->SCpnt && !info->scsi.disconnectable &&
      info->SCpnt->device->id == SCpnt->device->id)
   break;







  queue_remove_all_target(&info->queues.issue, target);
  queue_remove_all_target(&info->queues.disconnected, target);
  if (info->origSCpnt && info->origSCpnt->device->id == target)
   info->origSCpnt = ((void*)0);
  if (info->reqSCpnt && info->reqSCpnt->device->id == target)
   info->reqSCpnt = ((void*)0);
  for (i = 0; i < 8; i++)
   clear_bit(target * 8 + i, info->busyluns);





  SCpnt->host_scribble = (void *)fas216_devicereset_done;

  info->rst_dev_status = 0;
  info->rstSCpnt = SCpnt;

  if (info->scsi.phase == PHASE_IDLE)
   fas216_kick(info);

  mod_timer(&info->eh_timer, jiffies + 30 * HZ);
  spin_unlock_irqrestore(&info->host_lock, flags);




  wait_event(info->eh_wait, info->rst_dev_status);

  del_timer_sync(&info->eh_timer);
  spin_lock_irqsave(&info->host_lock, flags);
  info->rstSCpnt = ((void*)0);

  if (info->rst_dev_status == 1)
   res = SUCCESS;
 } while (0);

 SCpnt->host_scribble = ((void*)0);
 spin_unlock_irqrestore(&info->host_lock, flags);

 fas216_log(info, LOG_ERROR, "device reset complete: %s\n",
     res == SUCCESS ? "success" : "failed");

 return res;
}
