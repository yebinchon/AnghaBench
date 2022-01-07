
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct TYPE_10__ {scalar_t__ working_srl; } ;
struct TYPE_11__ {int * state; struct scsi_cmnd** srb; TYPE_3__ tw_compat_info; int flags; } ;
struct TYPE_9__ {scalar_t__ lun; TYPE_1__* host; } ;
struct TYPE_8__ {scalar_t__ hostdata; } ;
typedef TYPE_4__ TW_Device_Extension ;


 int DID_BAD_TARGET ;
 int DID_ERROR ;

 scalar_t__ TW_FW_SRL_LUNS_SUPPORTED ;
 int TW_IN_RESET ;
 int TW_S_COMPLETED ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 scalar_t__ test_bit (int ,int *) ;
 int twa_command_mapped (struct scsi_cmnd*) ;
 int twa_free_request_id (TYPE_4__*,int) ;
 int twa_get_request_id (TYPE_4__*,int*) ;
 int twa_scsiop_execute_scsi (TYPE_4__*,int,int *,int ,int *) ;

__attribute__((used)) static int twa_scsi_queue_lck(struct scsi_cmnd *SCpnt, void (*done)(struct scsi_cmnd *))
{
 int request_id, retval;
 TW_Device_Extension *tw_dev = (TW_Device_Extension *)SCpnt->device->host->hostdata;


 if (test_bit(TW_IN_RESET, &tw_dev->flags)) {
  retval = 128;
  goto out;
 }


 if ((SCpnt->device->lun != 0) && (tw_dev->tw_compat_info.working_srl < TW_FW_SRL_LUNS_SUPPORTED)) {
  SCpnt->result = (DID_BAD_TARGET << 16);
  done(SCpnt);
  retval = 0;
  goto out;
 }


 SCpnt->scsi_done = done;


 twa_get_request_id(tw_dev, &request_id);


 tw_dev->srb[request_id] = SCpnt;

 retval = twa_scsiop_execute_scsi(tw_dev, request_id, ((void*)0), 0, ((void*)0));
 switch (retval) {
 case 128:
  if (twa_command_mapped(SCpnt))
   scsi_dma_unmap(SCpnt);
  twa_free_request_id(tw_dev, request_id);
  break;
 case 1:
  SCpnt->result = (DID_ERROR << 16);
  if (twa_command_mapped(SCpnt))
   scsi_dma_unmap(SCpnt);
  done(SCpnt);
  tw_dev->state[request_id] = TW_S_COMPLETED;
  twa_free_request_id(tw_dev, request_id);
  retval = 0;
 }
out:
 return retval;
}
