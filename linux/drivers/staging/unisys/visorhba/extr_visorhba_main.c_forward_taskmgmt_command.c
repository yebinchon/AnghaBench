
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct visorhba_devdata {int idr; TYPE_4__* dev; int privlock; scalar_t__ serverchangingstate; scalar_t__ serverdown; } ;
struct TYPE_6__ {int lun; int id; int channel; } ;
struct TYPE_7__ {int tasktype; int handle; TYPE_2__ vdest; } ;
struct uiscmdrsp {TYPE_3__ scsitaskmgmt; int cmdtype; } ;
struct scsi_device {int sdev_gendev; int lun; int id; int channel; TYPE_1__* host; } ;
typedef enum task_mgmt_types { ____Placeholder_task_mgmt_types } task_mgmt_types ;
struct TYPE_8__ {int visorchannel; } ;
struct TYPE_5__ {scalar_t__ hostdata; } ;


 int CMD_SCSITASKMGMT_TYPE ;
 int FAILED ;
 int IOCHAN_TO_IOPART ;
 int SUCCESS ;
 int add_scsipending_entry (struct visorhba_devdata*,int ,int *) ;
 int cleanup_scsitaskmgmt_handles (int *,struct uiscmdrsp*) ;
 int del_scsipending_ent (struct visorhba_devdata*,int) ;
 int dev_dbg (int *,char*,int,...) ;
 struct uiscmdrsp* get_scsipending_cmdrsp (struct visorhba_devdata*,int) ;
 int init_waitqueue_head (int *) ;
 int msecs_to_jiffies (int) ;
 int setup_scsitaskmgmt_handles (int *,int *,struct uiscmdrsp*,int *,int*) ;
 scalar_t__ visorchannel_signalinsert (int ,int ,struct uiscmdrsp*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
        struct scsi_device *scsidev)
{
 struct uiscmdrsp *cmdrsp;
 struct visorhba_devdata *devdata =
  (struct visorhba_devdata *)scsidev->host->hostdata;
 int notifyresult = 0xffff;
 wait_queue_head_t notifyevent;
 int scsicmd_id = 0;

 if (devdata->serverdown || devdata->serverchangingstate)
  return FAILED;

 scsicmd_id = add_scsipending_entry(devdata, CMD_SCSITASKMGMT_TYPE,
        ((void*)0));
 if (scsicmd_id < 0)
  return FAILED;

 cmdrsp = get_scsipending_cmdrsp(devdata, scsicmd_id);

 init_waitqueue_head(&notifyevent);


 cmdrsp->cmdtype = CMD_SCSITASKMGMT_TYPE;
 setup_scsitaskmgmt_handles(&devdata->idr, &devdata->privlock, cmdrsp,
       &notifyevent, &notifyresult);


 cmdrsp->scsitaskmgmt.tasktype = tasktype;
 cmdrsp->scsitaskmgmt.vdest.channel = scsidev->channel;
 cmdrsp->scsitaskmgmt.vdest.id = scsidev->id;
 cmdrsp->scsitaskmgmt.vdest.lun = scsidev->lun;
 cmdrsp->scsitaskmgmt.handle = scsicmd_id;

 dev_dbg(&scsidev->sdev_gendev,
  "visorhba: initiating type=%d taskmgmt command\n", tasktype);
 if (visorchannel_signalinsert(devdata->dev->visorchannel,
          IOCHAN_TO_IOPART,
          cmdrsp))
  goto err_del_scsipending_ent;




 if (!wait_event_timeout(notifyevent, notifyresult != 0xffff,
    msecs_to_jiffies(45000)))
  goto err_del_scsipending_ent;

 dev_dbg(&scsidev->sdev_gendev,
  "visorhba: taskmgmt type=%d success; result=0x%x\n",
   tasktype, notifyresult);
 cleanup_scsitaskmgmt_handles(&devdata->idr, cmdrsp);
 return SUCCESS;

err_del_scsipending_ent:
 dev_dbg(&scsidev->sdev_gendev,
  "visorhba: taskmgmt type=%d not executed\n", tasktype);
 del_scsipending_ent(devdata, scsicmd_id);
 cleanup_scsitaskmgmt_handles(&devdata->idr, cmdrsp);
 return FAILED;
}
