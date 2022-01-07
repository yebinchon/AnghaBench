
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visorhba_devdata {int serverdown; int serverchangingstate; int privlock; int idr; struct scsipending* pending; int thread; } ;
struct uiscmdrsp {int result; int (* scsi_done ) (struct uiscmdrsp*) ;} ;
struct scsipending {int cmdtype; struct uiscmdrsp* sent; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct uiscmdrsp*) ;} ;




 int DID_RESET ;
 int MAX_PENDING_REQUESTS ;
 int TASK_MGMT_FAILED ;
 int complete_taskmgmt_command (int *,struct uiscmdrsp*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct uiscmdrsp*) ;
 int visor_thread_stop (int ) ;

__attribute__((used)) static void visorhba_serverdown_complete(struct visorhba_devdata *devdata)
{
 int i;
 struct scsipending *pendingdel = ((void*)0);
 struct scsi_cmnd *scsicmd = ((void*)0);
 struct uiscmdrsp *cmdrsp;
 unsigned long flags;




 visor_thread_stop(devdata->thread);


 spin_lock_irqsave(&devdata->privlock, flags);
 for (i = 0; i < MAX_PENDING_REQUESTS; i++) {
  pendingdel = &devdata->pending[i];
  switch (pendingdel->cmdtype) {
  case 128:
   scsicmd = pendingdel->sent;
   scsicmd->result = DID_RESET << 16;
   if (scsicmd->scsi_done)
    scsicmd->scsi_done(scsicmd);
   break;
  case 129:
   cmdrsp = pendingdel->sent;
   complete_taskmgmt_command(&devdata->idr, cmdrsp,
        TASK_MGMT_FAILED);
   break;
  default:
   break;
  }
  pendingdel->cmdtype = 0;
  pendingdel->sent = ((void*)0);
 }
 spin_unlock_irqrestore(&devdata->privlock, flags);

 devdata->serverdown = 1;
 devdata->serverchangingstate = 0;
}
