
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct scsi_cmnd {TYPE_3__* device; } ;
struct TYPE_9__ {int irq; } ;
struct TYPE_13__ {TYPE_2__* host; scalar_t__ internal_done; TYPE_1__ scsi; } ;
struct TYPE_12__ {scalar_t__ hostdata; } ;
struct TYPE_11__ {TYPE_4__* host; } ;
struct TYPE_10__ {int host_lock; } ;
typedef TYPE_5__ FAS216_Info ;


 int BUG_ON (int ) ;
 int REG_STAT ;
 int STAT_INT ;
 int fas216_checkmagic (TYPE_5__*) ;
 int fas216_internal_done ;
 int fas216_intr (TYPE_5__*) ;
 int fas216_queue_command_lck (struct scsi_cmnd*,int ) ;
 int fas216_readb (TYPE_5__*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int fas216_noqueue_command_lck(struct scsi_cmnd *SCpnt,
      void (*done)(struct scsi_cmnd *))
{
 FAS216_Info *info = (FAS216_Info *)SCpnt->device->host->hostdata;

 fas216_checkmagic(info);





 BUG_ON(info->scsi.irq);

 info->internal_done = 0;
 fas216_queue_command_lck(SCpnt, fas216_internal_done);







 spin_unlock_irq(info->host->host_lock);

 while (!info->internal_done) {
  if (fas216_readb(info, REG_STAT) & STAT_INT) {
   spin_lock_irq(info->host->host_lock);
   fas216_intr(info);
   spin_unlock_irq(info->host->host_lock);
  }
 }

 spin_lock_irq(info->host->host_lock);

 done(SCpnt);

 return 0;
}
