
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scsi_lun {int dummy; } ;
struct scsi_device {int lun; } ;


 int int_to_scsilun (int ,struct scsi_lun*) ;

__attribute__((used)) static inline u64 zfcp_scsi_dev_lun(struct scsi_device *sdev)
{
 u64 fcp_lun;

 int_to_scsilun(sdev->lun, (struct scsi_lun *)&fcp_lun);
 return fcp_lun;
}
