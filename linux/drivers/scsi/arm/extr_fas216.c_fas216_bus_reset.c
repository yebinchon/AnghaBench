
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int neg_t ;
struct TYPE_7__ {int async_stp; int SCp; int phase; int msgs; } ;
struct TYPE_6__ {int capabilities; int asyncperiod; int disconnect_ok; } ;
struct TYPE_9__ {int rst_bus_status; int eh_wait; TYPE_3__* device; TYPE_2__ scsi; TYPE_1__ ifcfg; int * SCpnt; } ;
struct TYPE_8__ {int period; scalar_t__ wide_xfer; scalar_t__ sof; int stp; int sync_state; int disconnect_ok; } ;
typedef TYPE_4__ FAS216_Info ;


 int FASCAP_DMA ;
 int FASCAP_PSEUDODMA ;
 int PHASE_IDLE ;
 int memset (int *,int ,int) ;
 int msgqueue_flush (int *) ;
 int neg_invalid ;
 int neg_wait ;
 int wake_up (int *) ;

__attribute__((used)) static void fas216_bus_reset(FAS216_Info *info)
{
 neg_t sync_state;
 int i;

 msgqueue_flush(&info->scsi.msgs);

 sync_state = neg_invalid;






 info->scsi.phase = PHASE_IDLE;
 info->SCpnt = ((void*)0);
 memset(&info->scsi.SCp, 0, sizeof(info->scsi.SCp));

 for (i = 0; i < 8; i++) {
  info->device[i].disconnect_ok = info->ifcfg.disconnect_ok;
  info->device[i].sync_state = sync_state;
  info->device[i].period = info->ifcfg.asyncperiod / 4;
  info->device[i].stp = info->scsi.async_stp;
  info->device[i].sof = 0;
  info->device[i].wide_xfer = 0;
 }

 info->rst_bus_status = 1;
 wake_up(&info->eh_wait);
}
