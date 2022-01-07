
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct us_data {int (* transport ) (struct scsi_cmnd*,struct us_data*) ;scalar_t__ protocol; int fflags; scalar_t__ subclass; int dflags; int (* transport_reset ) (struct us_data*) ;int dev_mutex; struct scsi_cmnd* srb; } ;
struct scsi_sense_hdr {int response_code; scalar_t__ asc; scalar_t__ ascq; int sense_key; } ;
struct scsi_eh_save {int dummy; } ;
struct scsi_cmnd {int result; scalar_t__ sc_data_direction; int* cmnd; int cmd_len; int* sense_buffer; scalar_t__ underflow; } ;


 int ATA_12 ;
 int ATA_16 ;
 int DID_ABORT ;
 int DID_ERROR ;
 int DID_IMM_RETRY ;
 scalar_t__ DMA_FROM_DEVICE ;
 void* HARDWARE_ERROR ;
 int INQUIRY ;
 int LOG_SENSE ;
 int MODE_SENSE ;
 int MODE_SENSE_10 ;
 int READ_10 ;
 int REQUEST_SENSE ;
 void* SAM_STAT_CHECK_CONDITION ;
 void* SAM_STAT_GOOD ;
 int SCSI_SENSE_BUFFERSIZE ;
 scalar_t__ USB_PR_CB ;
 scalar_t__ USB_PR_DPCM_USB ;
 scalar_t__ USB_SC_CYP_ATACB ;
 scalar_t__ USB_SC_RBC ;
 scalar_t__ USB_SC_SCSI ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_FAILED ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_TRANSPORT_NO_SENSE ;
 int US_FLIDX_ABORTING ;
 int US_FLIDX_READ10_WORKED ;
 int US_FLIDX_REDO_READ10 ;
 int US_FLIDX_RESETTING ;
 int US_FLIDX_TIMED_OUT ;
 int US_FL_BAD_SENSE ;
 int US_FL_INITIAL_READ10 ;
 int US_FL_SANE_SENSE ;
 int US_FL_SCM_MULT_TARG ;
 int US_SENSE_SIZE ;
 int clear_bit (int ,int *) ;
 int last_sector_hacks (struct us_data*,struct scsi_cmnd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_eh_prep_cmnd (struct scsi_cmnd*,struct scsi_eh_save*,int *,int ,int) ;
 int scsi_eh_restore_cmnd (struct scsi_cmnd*,struct scsi_eh_save*) ;
 scalar_t__ scsi_get_resid (struct scsi_cmnd*) ;
 int scsi_lock (int ) ;
 int scsi_normalize_sense (int*,int ,struct scsi_sense_hdr*) ;
 int* scsi_sense_desc_find (int*,int ,int) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int scsi_unlock (int ) ;
 int set_bit (int ,int *) ;
 int stub1 (struct scsi_cmnd*,struct us_data*) ;
 int stub2 (struct scsi_cmnd*,struct us_data*) ;
 int stub3 (struct us_data*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int us_to_host (struct us_data*) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;
 int usb_stor_port_reset (struct us_data*) ;
 int usb_stor_report_device_reset (struct us_data*) ;
 int usb_stor_show_sense (struct us_data*,int ,scalar_t__,scalar_t__) ;

void usb_stor_invoke_transport(struct scsi_cmnd *srb, struct us_data *us)
{
 int need_auto_sense;
 int result;


 scsi_set_resid(srb, 0);
 result = us->transport(srb, us);





 if (test_bit(US_FLIDX_TIMED_OUT, &us->dflags)) {
  usb_stor_dbg(us, "-- command was aborted\n");
  srb->result = DID_ABORT << 16;
  goto Handle_Errors;
 }


 if (result == USB_STOR_TRANSPORT_ERROR) {
  usb_stor_dbg(us, "-- transport indicates error, resetting\n");
  srb->result = DID_ERROR << 16;
  goto Handle_Errors;
 }


 if (result == USB_STOR_TRANSPORT_NO_SENSE) {
  srb->result = SAM_STAT_CHECK_CONDITION;
  last_sector_hacks(us, srb);
  return;
 }

 srb->result = SAM_STAT_GOOD;







 need_auto_sense = 0;







 if ((us->protocol == USB_PR_CB || us->protocol == USB_PR_DPCM_USB) &&
   srb->sc_data_direction != DMA_FROM_DEVICE) {
  usb_stor_dbg(us, "-- CB transport device requiring auto-sense\n");
  need_auto_sense = 1;
 }






 if (result == USB_STOR_TRANSPORT_FAILED) {
  usb_stor_dbg(us, "-- transport indicates command failure\n");
  need_auto_sense = 1;
 }







 if (unlikely((srb->cmnd[0] == ATA_16 || srb->cmnd[0] == ATA_12) &&
     result == USB_STOR_TRANSPORT_GOOD &&
     !(us->fflags & US_FL_SANE_SENSE) &&
     !(us->fflags & US_FL_BAD_SENSE) &&
     !(srb->cmnd[2] & 0x20))) {
  usb_stor_dbg(us, "-- SAT supported, increasing auto-sense\n");
  us->fflags |= US_FL_SANE_SENSE;
 }





 if ((scsi_get_resid(srb) > 0) &&
     !((srb->cmnd[0] == REQUEST_SENSE) ||
       (srb->cmnd[0] == INQUIRY) ||
       (srb->cmnd[0] == MODE_SENSE) ||
       (srb->cmnd[0] == LOG_SENSE) ||
       (srb->cmnd[0] == MODE_SENSE_10))) {
  usb_stor_dbg(us, "-- unexpectedly short transfer\n");
 }


 if (need_auto_sense) {
  int temp_result;
  struct scsi_eh_save ses;
  int sense_size = US_SENSE_SIZE;
  struct scsi_sense_hdr sshdr;
  const u8 *scdd;
  u8 fm_ili;


  if (us->fflags & US_FL_SANE_SENSE)
   sense_size = ~0;
Retry_Sense:
  usb_stor_dbg(us, "Issuing auto-REQUEST_SENSE\n");

  scsi_eh_prep_cmnd(srb, &ses, ((void*)0), 0, sense_size);


  if (us->subclass == USB_SC_RBC || us->subclass == USB_SC_SCSI ||
    us->subclass == USB_SC_CYP_ATACB)
   srb->cmd_len = 6;
  else
   srb->cmd_len = 12;


  scsi_set_resid(srb, 0);
  temp_result = us->transport(us->srb, us);


  scsi_eh_restore_cmnd(srb, &ses);

  if (test_bit(US_FLIDX_TIMED_OUT, &us->dflags)) {
   usb_stor_dbg(us, "-- auto-sense aborted\n");
   srb->result = DID_ABORT << 16;


   if (sense_size != US_SENSE_SIZE) {
    us->fflags &= ~US_FL_SANE_SENSE;
    us->fflags |= US_FL_BAD_SENSE;
   }
   goto Handle_Errors;
  }







  if (temp_result == USB_STOR_TRANSPORT_FAILED &&
    sense_size != US_SENSE_SIZE) {
   usb_stor_dbg(us, "-- auto-sense failure, retry small sense\n");
   sense_size = US_SENSE_SIZE;
   us->fflags &= ~US_FL_SANE_SENSE;
   us->fflags |= US_FL_BAD_SENSE;
   goto Retry_Sense;
  }


  if (temp_result != USB_STOR_TRANSPORT_GOOD) {
   usb_stor_dbg(us, "-- auto-sense failure\n");






   srb->result = DID_ERROR << 16;
   if (!(us->fflags & US_FL_SCM_MULT_TARG))
    goto Handle_Errors;
   return;
  }






  if (srb->sense_buffer[7] > (US_SENSE_SIZE - 8) &&
      !(us->fflags & US_FL_SANE_SENSE) &&
      !(us->fflags & US_FL_BAD_SENSE) &&
      (srb->sense_buffer[0] & 0x7C) == 0x70) {
   usb_stor_dbg(us, "-- SANE_SENSE support enabled\n");
   us->fflags |= US_FL_SANE_SENSE;





   usb_stor_dbg(us, "-- Sense data truncated to %i from %i\n",
         US_SENSE_SIZE,
         srb->sense_buffer[7] + 8);
   srb->sense_buffer[7] = (US_SENSE_SIZE - 8);
  }

  scsi_normalize_sense(srb->sense_buffer, SCSI_SENSE_BUFFERSIZE,
         &sshdr);

  usb_stor_dbg(us, "-- Result from auto-sense is %d\n",
        temp_result);
  usb_stor_dbg(us, "-- code: 0x%x, key: 0x%x, ASC: 0x%x, ASCQ: 0x%x\n",
        sshdr.response_code, sshdr.sense_key,
        sshdr.asc, sshdr.ascq);





  srb->result = SAM_STAT_CHECK_CONDITION;

  scdd = scsi_sense_desc_find(srb->sense_buffer,
         SCSI_SENSE_BUFFERSIZE, 4);
  fm_ili = (scdd ? scdd[3] : srb->sense_buffer[2]) & 0xA0;






  if (sshdr.sense_key == 0 && sshdr.asc == 0 && sshdr.ascq == 0 &&
      fm_ili == 0) {





   if (result == USB_STOR_TRANSPORT_GOOD) {
    srb->result = SAM_STAT_GOOD;
    srb->sense_buffer[0] = 0x0;
   }







   else if (srb->cmnd[0] == ATA_16 ||
     srb->cmnd[0] == ATA_12) {

   }






   else {
    srb->result = DID_ERROR << 16;
    if ((sshdr.response_code & 0x72) == 0x72)
     srb->sense_buffer[1] = HARDWARE_ERROR;
    else
     srb->sense_buffer[2] = HARDWARE_ERROR;
   }
  }
 }
 if (unlikely((us->fflags & US_FL_INITIAL_READ10) &&
   srb->cmnd[0] == READ_10)) {
  if (srb->result == SAM_STAT_GOOD) {
   set_bit(US_FLIDX_READ10_WORKED, &us->dflags);
  } else if (test_bit(US_FLIDX_READ10_WORKED, &us->dflags)) {
   clear_bit(US_FLIDX_READ10_WORKED, &us->dflags);
   set_bit(US_FLIDX_REDO_READ10, &us->dflags);
  }






  if (test_bit(US_FLIDX_REDO_READ10, &us->dflags)) {
   clear_bit(US_FLIDX_REDO_READ10, &us->dflags);
   srb->result = DID_IMM_RETRY << 16;
   srb->sense_buffer[0] = 0;
  }
 }


 if ((srb->result == SAM_STAT_GOOD || srb->sense_buffer[2] == 0) &&
   scsi_bufflen(srb) - scsi_get_resid(srb) < srb->underflow)
  srb->result = DID_ERROR << 16;

 last_sector_hacks(us, srb);
 return;






  Handle_Errors:





 scsi_lock(us_to_host(us));
 set_bit(US_FLIDX_RESETTING, &us->dflags);
 clear_bit(US_FLIDX_ABORTING, &us->dflags);
 scsi_unlock(us_to_host(us));





 mutex_unlock(&us->dev_mutex);
 result = usb_stor_port_reset(us);
 mutex_lock(&us->dev_mutex);

 if (result < 0) {
  scsi_lock(us_to_host(us));
  usb_stor_report_device_reset(us);
  scsi_unlock(us_to_host(us));
  us->transport_reset(us);
 }
 clear_bit(US_FLIDX_RESETTING, &us->dflags);
 last_sector_hacks(us, srb);
}
