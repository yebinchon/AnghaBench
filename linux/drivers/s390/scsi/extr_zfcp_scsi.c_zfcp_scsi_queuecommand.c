
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_scsi_dev {TYPE_1__* port; int status; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;int * host_scribble; int device; } ;
struct fc_rport {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int status; } ;


 int DID_ERROR ;
 int DID_IMM_RETRY ;
 int EBUSY ;
 int SCSI_MLQUEUE_DEVICE_BUSY ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int atomic_read (int *) ;
 int fc_remote_port_chkready (struct fc_rport*) ;
 int scsi_target (int ) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (int ) ;
 struct fc_rport* starget_to_rport (int ) ;
 int stub1 (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;
 int zfcp_dbf_scsi_fail_send (struct scsi_cmnd*) ;
 int zfcp_fsf_fcp_cmnd (struct scsi_cmnd*) ;
 int zfcp_scsi_command_fail (struct scsi_cmnd*,int ) ;

__attribute__((used)) static
int zfcp_scsi_queuecommand(struct Scsi_Host *shost, struct scsi_cmnd *scpnt)
{
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(scpnt->device);
 struct fc_rport *rport = starget_to_rport(scsi_target(scpnt->device));
 int status, scsi_result, ret;


 scpnt->result = 0;
 scpnt->host_scribble = ((void*)0);

 scsi_result = fc_remote_port_chkready(rport);
 if (unlikely(scsi_result)) {
  scpnt->result = scsi_result;
  zfcp_dbf_scsi_fail_send(scpnt);
  scpnt->scsi_done(scpnt);
  return 0;
 }

 status = atomic_read(&zfcp_sdev->status);
 if (unlikely(status & ZFCP_STATUS_COMMON_ERP_FAILED) &&
       !(atomic_read(&zfcp_sdev->port->status) &
         ZFCP_STATUS_COMMON_ERP_FAILED)) {


  zfcp_scsi_command_fail(scpnt, DID_ERROR);
  return 0;
 }

 if (unlikely(!(status & ZFCP_STATUS_COMMON_UNBLOCKED))) {




  zfcp_scsi_command_fail(scpnt, DID_IMM_RETRY);
  return 0;
 }

 ret = zfcp_fsf_fcp_cmnd(scpnt);
 if (unlikely(ret == -EBUSY))
  return SCSI_MLQUEUE_DEVICE_BUSY;
 else if (unlikely(ret < 0))
  return SCSI_MLQUEUE_HOST_BUSY;

 return ret;
}
