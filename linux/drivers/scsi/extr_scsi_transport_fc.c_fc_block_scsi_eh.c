
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int device; } ;
struct fc_rport {int dummy; } ;


 int FAST_IO_FAIL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int fc_block_rport (struct fc_rport*) ;
 int scsi_target (int ) ;
 struct fc_rport* starget_to_rport (int ) ;

int fc_block_scsi_eh(struct scsi_cmnd *cmnd)
{
 struct fc_rport *rport = starget_to_rport(scsi_target(cmnd->device));

 if (WARN_ON_ONCE(!rport))
  return FAST_IO_FAIL;

 return fc_block_rport(rport);
}
