
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zfcp_scsi_dev {int status; } ;
struct scsi_device {int dummy; } ;


 int atomic_or (int ,int *) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;

void zfcp_erp_set_lun_status(struct scsi_device *sdev, u32 mask)
{
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(sdev);

 atomic_or(mask, &zfcp_sdev->status);
}
