
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct scsi_cmnd {int dummy; } ;
struct TYPE_20__ {TYPE_1__* device; } ;
struct TYPE_17__ {int this_residual; int ptr; } ;
struct TYPE_18__ {TYPE_3__ SCp; scalar_t__ disconnectable; } ;
struct TYPE_16__ {int disconnected; int issue; } ;
struct TYPE_19__ {TYPE_4__ scsi; TYPE_6__* SCpnt; TYPE_2__ queues; int busyluns; struct scsi_cmnd* origSCpnt; struct scsi_cmnd* reqSCpnt; struct scsi_cmnd* rstSCpnt; } ;
struct TYPE_15__ {int id; } ;
typedef TYPE_5__ FAS216_Info ;


 int CMD_DISABLESEL ;
 int CMD_ENABLESEL ;
 int LOG_CONNECT ;
 int LOG_MESSAGES ;



 int fas216_allocate_tag (TYPE_5__*,struct scsi_cmnd*) ;
 int fas216_checkmagic (TYPE_5__*) ;
 int fas216_cmd (TYPE_5__*,int ) ;
 int fas216_do_bus_device_reset (TYPE_5__*,struct scsi_cmnd*) ;
 int fas216_log (TYPE_5__*,int,char*,int ,...) ;
 int fas216_log_command (TYPE_5__*,int,struct scsi_cmnd*,char*) ;
 int fas216_start_command (TYPE_5__*,struct scsi_cmnd*) ;
 int queue_add_cmd_tail (int *,TYPE_6__*) ;
 struct scsi_cmnd* queue_remove_exclude (int *,int ) ;

__attribute__((used)) static void fas216_kick(FAS216_Info *info)
{
 struct scsi_cmnd *SCpnt = ((void*)0);



 int where_from = 0;

 fas216_checkmagic(info);




 do {
  if (info->rstSCpnt) {
   SCpnt = info->rstSCpnt;

   where_from = 1;
   break;
  }

  if (info->reqSCpnt) {
   SCpnt = info->reqSCpnt;
   info->reqSCpnt = ((void*)0);
   break;
  }

  if (info->origSCpnt) {
   SCpnt = info->origSCpnt;
   info->origSCpnt = ((void*)0);
   break;
  }


  if (!SCpnt) {
   SCpnt = queue_remove_exclude(&info->queues.issue,
           info->busyluns);
   where_from = 2;
   break;
  }
 } while (0);

 if (!SCpnt) {



  fas216_cmd(info, CMD_ENABLESEL);
  return;
 }




 fas216_cmd(info, CMD_DISABLESEL);

 if (info->scsi.disconnectable && info->SCpnt) {
  fas216_log(info, LOG_CONNECT,
   "moved command for %d to disconnected queue",
   info->SCpnt->device->id);
  queue_add_cmd_tail(&info->queues.disconnected, info->SCpnt);
  info->scsi.disconnectable = 0;
  info->SCpnt = ((void*)0);
 }

 fas216_log_command(info, LOG_CONNECT | LOG_MESSAGES, SCpnt,
      "starting");

 switch (where_from) {
 case 2:
  fas216_allocate_tag(info, SCpnt);

 case 0:
  fas216_start_command(info, SCpnt);
  break;
 case 1:
  fas216_do_bus_device_reset(info, SCpnt);
  break;
 }

 fas216_log(info, LOG_CONNECT, "select: data pointers [%p, %X]",
  info->scsi.SCp.ptr, info->scsi.SCp.this_residual);





}
