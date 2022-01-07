
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int phase; } ;
struct scsi_cmnd {unsigned char cmd_len; int * host_scribble; TYPE_2__ SCp; TYPE_1__* device; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {int commands; } ;
struct TYPE_4__ {struct Scsi_Host* host; } ;


 struct scsi_cmnd* CURRENT_SC ;
 int DECLARE_COMPLETION (int ) ;
 int DISCONNECTED_SC ;
 int DO_LOCK (unsigned long) ;
 int DO_UNLOCK (unsigned long) ;
 int FAILED ;
 TYPE_3__* HOSTDATA (struct Scsi_Host*) ;
 int HZ ;
 int ISSUE_SC ;
 int KERN_ERR ;
 int PORTA ;
 int SETPORT (int ,int ) ;
 int SUCCESS ;
 int aha152x_internal_queue (struct scsi_cmnd*,int *,int ,int ) ;
 int append_SC (int *,struct scsi_cmnd*) ;
 int done ;
 int kfree (int *) ;
 int * remove_SC (int *,struct scsi_cmnd*) ;
 int reset_done ;
 int resetted ;
 int resetting ;
 int scmd_printk (int ,struct scsi_cmnd*,char*) ;
 unsigned long wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int aha152x_device_reset(struct scsi_cmnd * SCpnt)
{
 struct Scsi_Host *shpnt = SCpnt->device->host;
 DECLARE_COMPLETION(done);
 int ret, issued, disconnected;
 unsigned char old_cmd_len = SCpnt->cmd_len;
 unsigned long flags;
 unsigned long timeleft;

 if(CURRENT_SC==SCpnt) {
  scmd_printk(KERN_ERR, SCpnt, "cannot reset current device\n");
  return FAILED;
 }

 DO_LOCK(flags);
 issued = remove_SC(&ISSUE_SC, SCpnt) == ((void*)0);
 disconnected = issued && remove_SC(&DISCONNECTED_SC, SCpnt);
 DO_UNLOCK(flags);

 SCpnt->cmd_len = 0;

 aha152x_internal_queue(SCpnt, &done, resetting, reset_done);

 timeleft = wait_for_completion_timeout(&done, 100*HZ);
 if (!timeleft) {

  DO_LOCK(flags);
  remove_SC(&ISSUE_SC, SCpnt);
  DO_UNLOCK(flags);
 }

 SCpnt->cmd_len = old_cmd_len;

 DO_LOCK(flags);

 if(SCpnt->SCp.phase & resetted) {
  HOSTDATA(shpnt)->commands--;
  if (!HOSTDATA(shpnt)->commands)
   SETPORT(PORTA, 0);
  kfree(SCpnt->host_scribble);
  SCpnt->host_scribble=((void*)0);

  ret = SUCCESS;
 } else {

  if(!issued) {
   append_SC(&ISSUE_SC, SCpnt);
  } else if(disconnected) {
   append_SC(&DISCONNECTED_SC, SCpnt);
  }

  ret = FAILED;
 }

 DO_UNLOCK(flags);
 return ret;
}
