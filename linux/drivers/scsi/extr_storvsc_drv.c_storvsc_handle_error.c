
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vmscsi_request {int srb_status; int target_id; int lun; } ;
struct storvsc_scan_work {int work; int tgt_id; int lun; struct Scsi_Host* host; } ;
struct scsi_cmnd {int * cmnd; } ;
struct hv_host_device {int handle_error_wq; } ;
struct Scsi_Host {int dummy; } ;




 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_PASSTHROUGH ;
 int DID_REQUEUE ;
 int DID_TARGET_FAILURE ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,void (*) (struct work_struct*)) ;
 int SRB_STATUS (int) ;

 int SRB_STATUS_AUTOSENSE_VALID ;



 struct storvsc_scan_work* kmalloc (int,int ) ;
 int queue_work (int ,int *) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;
 struct hv_host_device* shost_priv (struct Scsi_Host*) ;
 void storvsc_device_scan (struct work_struct*) ;
 void storvsc_remove_lun (struct work_struct*) ;

__attribute__((used)) static void storvsc_handle_error(struct vmscsi_request *vm_srb,
    struct scsi_cmnd *scmnd,
    struct Scsi_Host *host,
    u8 asc, u8 ascq)
{
 struct storvsc_scan_work *wrk;
 void (*process_err_fn)(struct work_struct *work);
 struct hv_host_device *host_dev = shost_priv(host);
 bool do_work = 0;

 switch (SRB_STATUS(vm_srb->srb_status)) {
 case 130:





  if (vm_srb->srb_status & SRB_STATUS_AUTOSENSE_VALID)
   break;






  switch (scmnd->cmnd[0]) {
  case 132:
  case 133:
   set_host_byte(scmnd, DID_PASSTHROUGH);
   break;





  case 128:
   break;
  default:
   set_host_byte(scmnd, DID_ERROR);
  }
  break;
 case 129:
  set_host_byte(scmnd, DID_NO_CONNECT);
  do_work = 1;
  process_err_fn = storvsc_remove_lun;
  break;
 case 131:
  if (vm_srb->srb_status & SRB_STATUS_AUTOSENSE_VALID &&
      (asc == 0x2a) && (ascq == 0x9)) {
   do_work = 1;
   process_err_fn = storvsc_device_scan;



   set_host_byte(scmnd, DID_REQUEUE);
  }
  break;
 }

 if (!do_work)
  return;




 wrk = kmalloc(sizeof(struct storvsc_scan_work), GFP_ATOMIC);
 if (!wrk) {
  set_host_byte(scmnd, DID_TARGET_FAILURE);
  return;
 }

 wrk->host = host;
 wrk->lun = vm_srb->lun;
 wrk->tgt_id = vm_srb->target_id;
 INIT_WORK(&wrk->work, process_err_fn);
 queue_work(host_dev->handle_error_wq, &wrk->work);
}
