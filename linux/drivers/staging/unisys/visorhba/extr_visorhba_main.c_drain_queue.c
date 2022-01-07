
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct visorhba_devdata {TYPE_3__* dev; int idr; } ;
struct TYPE_5__ {int result; int handle; } ;
struct TYPE_4__ {int handle; } ;
struct uiscmdrsp {scalar_t__ cmdtype; TYPE_2__ scsitaskmgmt; TYPE_1__ scsi; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_6__ {int device; int visorchannel; } ;


 scalar_t__ CMD_NOTIFYGUEST_TYPE ;
 scalar_t__ CMD_SCSITASKMGMT_TYPE ;
 scalar_t__ CMD_SCSI_TYPE ;
 int IOCHAN_FROM_IOPART ;
 int complete_scsi_command (struct uiscmdrsp*,struct scsi_cmnd*) ;
 int complete_taskmgmt_command (int *,struct uiscmdrsp*,int ) ;
 struct scsi_cmnd* del_scsipending_ent (struct visorhba_devdata*,int ) ;
 int dev_err_once (int *,char*) ;
 scalar_t__ visorchannel_signalremove (int ,int ,struct uiscmdrsp*) ;

__attribute__((used)) static void drain_queue(struct uiscmdrsp *cmdrsp,
   struct visorhba_devdata *devdata)
{
 struct scsi_cmnd *scsicmd;

 while (1) {

  if (visorchannel_signalremove(devdata->dev->visorchannel,
           IOCHAN_FROM_IOPART,
           cmdrsp))
   break;
  if (cmdrsp->cmdtype == CMD_SCSI_TYPE) {



   scsicmd = del_scsipending_ent(devdata,
            cmdrsp->scsi.handle);
   if (!scsicmd)
    break;

   complete_scsi_command(cmdrsp, scsicmd);
  } else if (cmdrsp->cmdtype == CMD_SCSITASKMGMT_TYPE) {
   if (!del_scsipending_ent(devdata,
       cmdrsp->scsitaskmgmt.handle))
    break;
   complete_taskmgmt_command(&devdata->idr, cmdrsp,
        cmdrsp->scsitaskmgmt.result);
  } else if (cmdrsp->cmdtype == CMD_NOTIFYGUEST_TYPE)
   dev_err_once(&devdata->dev->device,
         "ignoring unsupported NOTIFYGUEST\n");

 }
}
