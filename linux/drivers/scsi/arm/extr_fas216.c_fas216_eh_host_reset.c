
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_12__ {TYPE_3__* host; } ;
struct TYPE_11__ {int host_lock; } ;
struct TYPE_10__ {TYPE_1__* host; } ;
struct TYPE_9__ {scalar_t__ hostdata; } ;
typedef TYPE_4__ FAS216_Info ;


 int CMD_NOP ;
 int CMD_RESETCHIP ;
 int LOG_ERROR ;
 int SUCCESS ;
 int fas216_checkmagic (TYPE_4__*) ;
 int fas216_cmd (TYPE_4__*,int ) ;
 int fas216_init_chip (TYPE_4__*) ;
 int fas216_log (TYPE_4__*,int ,char*) ;
 int msleep (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int fas216_eh_host_reset(struct scsi_cmnd *SCpnt)
{
 FAS216_Info *info = (FAS216_Info *)SCpnt->device->host->hostdata;

 spin_lock_irq(info->host->host_lock);

 fas216_checkmagic(info);

 fas216_log(info, LOG_ERROR, "resetting host");




 fas216_cmd(info, CMD_RESETCHIP);







 spin_unlock_irq(info->host->host_lock);
 msleep(50 * 1000/100);
 spin_lock_irq(info->host->host_lock);




 fas216_cmd(info, CMD_NOP);

 fas216_init_chip(info);

 spin_unlock_irq(info->host->host_lock);
 return SUCCESS;
}
