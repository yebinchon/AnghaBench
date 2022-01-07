
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us_data {int fflags; scalar_t__ max_lun; int dev_mutex; struct scsi_cmnd* srb; int dflags; int notify; int pusb_dev; int (* proto_handler ) (struct scsi_cmnd*,struct us_data*) ;int cmnd_ready; } ;
struct scsi_cmnd {int result; scalar_t__ sc_data_direction; scalar_t__* cmnd; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {scalar_t__ lun; scalar_t__ id; } ;


 int DID_ABORT ;
 int DID_BAD_TARGET ;
 int DID_ERROR ;
 scalar_t__ DMA_BIDIRECTIONAL ;
 scalar_t__ INQUIRY ;
 int SAM_STAT_GOOD ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int US_DEBUG (int ) ;
 int US_FLIDX_ABORTING ;
 int US_FLIDX_TIMED_OUT ;
 int US_FL_FIX_INQUIRY ;
 int US_FL_SCM_MULT_TARG ;
 int __set_current_state (int ) ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 int fill_inquiry_response (struct us_data*,unsigned char*,int) ;
 scalar_t__ kthread_should_stop () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule () ;
 int scsi_lock (struct Scsi_Host*) ;
 int scsi_unlock (struct Scsi_Host*) ;
 int set_current_state (int ) ;
 int stub1 (struct scsi_cmnd*,struct us_data*) ;
 int stub2 (struct scsi_cmnd*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct Scsi_Host* us_to_host (struct us_data*) ;
 int usb_mark_last_busy (int ) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;
 int usb_stor_show_command (struct us_data*,struct scsi_cmnd*) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int usb_stor_control_thread(void * __us)
{
 struct us_data *us = (struct us_data *)__us;
 struct Scsi_Host *host = us_to_host(us);
 struct scsi_cmnd *srb;

 for (;;) {
  usb_stor_dbg(us, "*** thread sleeping\n");
  if (wait_for_completion_interruptible(&us->cmnd_ready))
   break;

  usb_stor_dbg(us, "*** thread awakened\n");


  mutex_lock(&(us->dev_mutex));


  scsi_lock(host);


  srb = us->srb;
  if (srb == ((void*)0)) {
   scsi_unlock(host);
   mutex_unlock(&us->dev_mutex);
   usb_stor_dbg(us, "-- exiting\n");
   break;
  }


  if (test_bit(US_FLIDX_TIMED_OUT, &us->dflags)) {
   srb->result = DID_ABORT << 16;
   goto SkipForAbort;
  }

  scsi_unlock(host);





  if (srb->sc_data_direction == DMA_BIDIRECTIONAL) {
   usb_stor_dbg(us, "UNKNOWN data direction\n");
   srb->result = DID_ERROR << 16;
  }





  else if (srb->device->id &&
    !(us->fflags & US_FL_SCM_MULT_TARG)) {
   usb_stor_dbg(us, "Bad target number (%d:%llu)\n",
         srb->device->id,
         srb->device->lun);
   srb->result = DID_BAD_TARGET << 16;
  }

  else if (srb->device->lun > us->max_lun) {
   usb_stor_dbg(us, "Bad LUN (%d:%llu)\n",
         srb->device->id,
         srb->device->lun);
   srb->result = DID_BAD_TARGET << 16;
  }





  else if ((srb->cmnd[0] == INQUIRY) &&
       (us->fflags & US_FL_FIX_INQUIRY)) {
   unsigned char data_ptr[36] = {
       0x00, 0x80, 0x02, 0x02,
       0x1F, 0x00, 0x00, 0x00};

   usb_stor_dbg(us, "Faking INQUIRY command\n");
   fill_inquiry_response(us, data_ptr, 36);
   srb->result = SAM_STAT_GOOD;
  }


  else {
   US_DEBUG(usb_stor_show_command(us, srb));
   us->proto_handler(srb, us);
   usb_mark_last_busy(us->pusb_dev);
  }


  scsi_lock(host);


  if (srb->result == DID_ABORT << 16) {
SkipForAbort:
   usb_stor_dbg(us, "scsi command aborted\n");
   srb = ((void*)0);
  }
  if (test_bit(US_FLIDX_TIMED_OUT, &us->dflags)) {
   complete(&(us->notify));


   clear_bit(US_FLIDX_ABORTING, &us->dflags);
   clear_bit(US_FLIDX_TIMED_OUT, &us->dflags);
  }


  us->srb = ((void*)0);
  scsi_unlock(host);


  mutex_unlock(&us->dev_mutex);


  if (srb) {
   usb_stor_dbg(us, "scsi cmd done, result=0x%x\n",
     srb->result);
   srb->scsi_done(srb);
  }
 }


 for (;;) {
  set_current_state(TASK_INTERRUPTIBLE);
  if (kthread_should_stop())
   break;
  schedule();
 }
 __set_current_state(TASK_RUNNING);
 return 0;
}
