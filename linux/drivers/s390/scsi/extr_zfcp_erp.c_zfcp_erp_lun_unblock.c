
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_scsi_dev {int status; int erp_action; } ;
struct scsi_device {int dummy; } ;


 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int atomic_or (int ,int *) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int zfcp_dbf_rec_run (char*,int *) ;
 scalar_t__ zfcp_erp_status_change_set (int ,int *) ;

__attribute__((used)) static void zfcp_erp_lun_unblock(struct scsi_device *sdev)
{
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(sdev);

 if (zfcp_erp_status_change_set(ZFCP_STATUS_COMMON_UNBLOCKED,
           &zfcp_sdev->status))
  zfcp_dbf_rec_run("erlubl1", &sdev_to_zfcp(sdev)->erp_action);
 atomic_or(ZFCP_STATUS_COMMON_UNBLOCKED, &zfcp_sdev->status);
}
