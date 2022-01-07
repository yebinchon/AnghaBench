
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;int result; TYPE_2__* device; } ;
struct TYPE_9__ {int * state; struct scsi_cmnd** srb; int flags; } ;
struct TYPE_8__ {TYPE_1__* host; } ;
struct TYPE_7__ {scalar_t__ hostdata; } ;
typedef TYPE_3__ TW_Device_Extension ;


 int DID_ERROR ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int TW_IN_RESET ;
 int TW_S_COMPLETED ;
 scalar_t__ test_bit (int ,int *) ;
 int twl_free_request_id (TYPE_3__*,int) ;
 int twl_get_request_id (TYPE_3__*,int*) ;
 int twl_scsiop_execute_scsi (TYPE_3__*,int,int *,int ,int *) ;

__attribute__((used)) static int twl_scsi_queue_lck(struct scsi_cmnd *SCpnt, void (*done)(struct scsi_cmnd *))
{
 int request_id, retval;
 TW_Device_Extension *tw_dev = (TW_Device_Extension *)SCpnt->device->host->hostdata;


 if (test_bit(TW_IN_RESET, &tw_dev->flags)) {
  retval = SCSI_MLQUEUE_HOST_BUSY;
  goto out;
 }


 SCpnt->scsi_done = done;


 twl_get_request_id(tw_dev, &request_id);


 tw_dev->srb[request_id] = SCpnt;

 retval = twl_scsiop_execute_scsi(tw_dev, request_id, ((void*)0), 0, ((void*)0));
 if (retval) {
  tw_dev->state[request_id] = TW_S_COMPLETED;
  twl_free_request_id(tw_dev, request_id);
  SCpnt->result = (DID_ERROR << 16);
  done(SCpnt);
  retval = 0;
 }
out:
 return retval;
}
