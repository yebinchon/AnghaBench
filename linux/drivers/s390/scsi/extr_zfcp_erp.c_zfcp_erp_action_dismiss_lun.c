
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_scsi_dev {int erp_action; int status; } ;
struct scsi_device {int dummy; } ;


 int ZFCP_STATUS_COMMON_ERP_INUSE ;
 int atomic_read (int *) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int zfcp_erp_action_dismiss (int *) ;

__attribute__((used)) static void zfcp_erp_action_dismiss_lun(struct scsi_device *sdev)
{
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(sdev);

 if (atomic_read(&zfcp_sdev->status) & ZFCP_STATUS_COMMON_ERP_INUSE)
  zfcp_erp_action_dismiss(&zfcp_sdev->erp_action);
}
