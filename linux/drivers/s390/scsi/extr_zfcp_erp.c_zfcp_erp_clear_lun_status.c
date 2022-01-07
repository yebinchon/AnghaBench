
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zfcp_scsi_dev {int erp_counter; int status; } ;
struct scsi_device {int dummy; } ;


 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int atomic_andnot (int,int *) ;
 int atomic_set (int *,int ) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;

void zfcp_erp_clear_lun_status(struct scsi_device *sdev, u32 mask)
{
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(sdev);

 atomic_andnot(mask, &zfcp_sdev->status);

 if (mask & ZFCP_STATUS_COMMON_ERP_FAILED)
  atomic_set(&zfcp_sdev->erp_counter, 0);
}
