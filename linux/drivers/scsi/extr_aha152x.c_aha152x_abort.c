
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int * host_scribble; TYPE_1__* device; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int commands; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;


 int DO_LOCK (unsigned long) ;
 int DO_UNLOCK (unsigned long) ;
 int FAILED ;
 TYPE_2__* HOSTDATA (struct Scsi_Host*) ;
 int ISSUE_SC ;
 int KERN_ERR ;
 int PORTA ;
 int SETPORT (int ,int ) ;
 int SUCCESS ;
 int kfree (int *) ;
 struct scsi_cmnd* remove_SC (int *,struct scsi_cmnd*) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*) ;

__attribute__((used)) static int aha152x_abort(struct scsi_cmnd *SCpnt)
{
 struct Scsi_Host *shpnt = SCpnt->device->host;
 struct scsi_cmnd *ptr;
 unsigned long flags;

 DO_LOCK(flags);

 ptr=remove_SC(&ISSUE_SC, SCpnt);

 if(ptr) {
  HOSTDATA(shpnt)->commands--;
  if (!HOSTDATA(shpnt)->commands)
   SETPORT(PORTA, 0);
  DO_UNLOCK(flags);

  kfree(SCpnt->host_scribble);
  SCpnt->host_scribble=((void*)0);

  return SUCCESS;
 }

 DO_UNLOCK(flags);
 scmd_printk(KERN_ERR, SCpnt,
      "cannot abort running or disconnected command\n");

 return FAILED;
}
