
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_scsi_dev {int status; } ;
struct scsi_device {int dummy; } ;


 int ZFCP_STATUS_COMMON_ACCESS_DENIED ;
 int atomic_andnot (int ,int *) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;

__attribute__((used)) static void zfcp_erp_lun_strategy_clearstati(struct scsi_device *sdev)
{
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(sdev);

 atomic_andnot(ZFCP_STATUS_COMMON_ACCESS_DENIED,
     &zfcp_sdev->status);
}
