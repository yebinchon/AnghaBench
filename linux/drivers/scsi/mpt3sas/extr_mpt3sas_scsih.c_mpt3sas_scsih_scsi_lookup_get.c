
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct scsiio_tracker {int cb_idx; scalar_t__ smid; } ;
struct scsi_cmnd {int dummy; } ;
struct MPT3SAS_ADAPTER {scalar_t__ scsiio_depth; int shost; } ;
struct TYPE_3__ {int DevHandle; } ;
typedef TYPE_1__ Mpi25SCSIIORequest_t ;


 scalar_t__ INTERNAL_SCSIIO_CMDS_COUNT ;
 TYPE_1__* mpt3sas_base_get_msg_frame (struct MPT3SAS_ADAPTER*,scalar_t__) ;
 struct scsiio_tracker* scsi_cmd_priv (struct scsi_cmnd*) ;
 struct scsi_cmnd* scsi_host_find_tag (int ,scalar_t__) ;

struct scsi_cmnd *
mpt3sas_scsih_scsi_lookup_get(struct MPT3SAS_ADAPTER *ioc, u16 smid)
{
 struct scsi_cmnd *scmd = ((void*)0);
 struct scsiio_tracker *st;
 Mpi25SCSIIORequest_t *mpi_request;

 if (smid > 0 &&
     smid <= ioc->scsiio_depth - INTERNAL_SCSIIO_CMDS_COUNT) {
  u32 unique_tag = smid - 1;

  mpi_request = mpt3sas_base_get_msg_frame(ioc, smid);







  if (!mpi_request->DevHandle)
   return scmd;

  scmd = scsi_host_find_tag(ioc->shost, unique_tag);
  if (scmd) {
   st = scsi_cmd_priv(scmd);
   if (st->cb_idx == 0xFF || st->smid == 0)
    scmd = ((void*)0);
  }
 }
 return scmd;
}
