
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct fas216_device {int sync_state; char period; char sof; int stp; } ;
struct TYPE_11__ {int async_stp; void* phase; int msgs; } ;
struct TYPE_10__ {char sync_max_depth; int clockrate; int asyncperiod; } ;
struct TYPE_14__ {TYPE_4__* SCpnt; TYPE_2__ scsi; TYPE_1__ ifcfg; struct fas216_device* device; } ;
struct TYPE_13__ {TYPE_3__* device; } ;
struct TYPE_12__ {size_t id; } ;
typedef TYPE_5__ FAS216_Info ;


 int CMD_SETATN ;

 int EXTENDED_SDTR ;

 void* PHASE_MSGOUT_EXPECT ;
 int fas216_cmd (TYPE_5__*,int ) ;
 int fas216_set_sync (TYPE_5__*,size_t) ;
 int fas216_syncperiod (TYPE_5__*,char) ;
 int msgqueue_addmsg (int *,int,int const,...) ;
 int msgqueue_flush (int *) ;
 int neg_complete ;


 int neg_targcomplete ;

__attribute__((used)) static void fas216_handlesync(FAS216_Info *info, char *msg)
{
 struct fas216_device *dev = &info->device[info->SCpnt->device->id];
 enum { sync, async, none, reject } res = none;
 res = reject;


 switch (res) {
 case sync:
  dev->period = msg[3];
  dev->sof = msg[4];
  dev->stp = fas216_syncperiod(info, msg[3] * 4);
  fas216_set_sync(info, info->SCpnt->device->id);
  break;

 case reject:
  fas216_cmd(info, CMD_SETATN);
  msgqueue_flush(&info->scsi.msgs);
  msgqueue_addmsg(&info->scsi.msgs, 1, 130);
  info->scsi.phase = PHASE_MSGOUT_EXPECT;


 case async:
  dev->period = info->ifcfg.asyncperiod / 4;
  dev->sof = 0;
  dev->stp = info->scsi.async_stp;
  fas216_set_sync(info, info->SCpnt->device->id);
  break;

 case none:
  break;
 }
}
