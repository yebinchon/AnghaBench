
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_scsi_dev {int status; } ;
struct zfcp_erp_action {int step; int status; struct scsi_device* sdev; } ;
struct scsi_device {int dummy; } ;
typedef enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;


 int ZFCP_ERP_EXIT ;
 int ZFCP_ERP_FAILED ;






 int ZFCP_ERP_SUCCEEDED ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_ERP_CLOSE_ONLY ;
 int atomic_read (int *) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int zfcp_erp_lun_strategy_clearstati (struct scsi_device*) ;
 int zfcp_erp_lun_strategy_close (struct zfcp_erp_action*) ;
 int zfcp_erp_lun_strategy_open (struct zfcp_erp_action*) ;

__attribute__((used)) static enum zfcp_erp_act_result zfcp_erp_lun_strategy(
 struct zfcp_erp_action *erp_action)
{
 struct scsi_device *sdev = erp_action->sdev;
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(sdev);

 switch (erp_action->step) {
 case 128:
  zfcp_erp_lun_strategy_clearstati(sdev);
  if (atomic_read(&zfcp_sdev->status) & ZFCP_STATUS_COMMON_OPEN)
   return zfcp_erp_lun_strategy_close(erp_action);


 case 133:
  if (atomic_read(&zfcp_sdev->status) & ZFCP_STATUS_COMMON_OPEN)
   return ZFCP_ERP_FAILED;
  if (erp_action->status & ZFCP_STATUS_ERP_CLOSE_ONLY)
   return ZFCP_ERP_EXIT;
  return zfcp_erp_lun_strategy_open(erp_action);

 case 132:
  if (atomic_read(&zfcp_sdev->status) & ZFCP_STATUS_COMMON_OPEN)
   return ZFCP_ERP_SUCCEEDED;
  break;
 case 131:
 case 130:
 case 129:

  break;
 }
 return ZFCP_ERP_FAILED;
}
