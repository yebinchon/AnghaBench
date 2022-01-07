
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_lun {int dummy; } ;
struct scsi_device {int lun; } ;
struct fcp_cmnd {int fc_tm_flags; int fc_lun; } ;


 int int_to_scsilun (int ,struct scsi_lun*) ;

__attribute__((used)) static inline
void zfcp_fc_fcp_tm(struct fcp_cmnd *fcp, struct scsi_device *dev, u8 tm_flags)
{
 int_to_scsilun(dev->lun, (struct scsi_lun *) &fcp->fc_lun);
 fcp->fc_tm_flags = tm_flags;
}
