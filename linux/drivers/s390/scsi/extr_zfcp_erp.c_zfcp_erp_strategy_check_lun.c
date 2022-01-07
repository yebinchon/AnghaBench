
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_scsi_dev {int status; TYPE_3__* port; int erp_counter; } ;
struct scsi_device {int dummy; } ;
typedef enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;
struct TYPE_6__ {scalar_t__ wwpn; TYPE_2__* adapter; } ;
struct TYPE_5__ {TYPE_1__* ccw_device; } ;
struct TYPE_4__ {int dev; } ;
 int ZFCP_MAX_ERPS ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*,unsigned long long,unsigned long long) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int zfcp_erp_lun_block (struct scsi_device*,int ) ;
 int zfcp_erp_lun_unblock (struct scsi_device*) ;
 int zfcp_erp_set_lun_status (struct scsi_device*,int) ;
 scalar_t__ zfcp_scsi_dev_lun (struct scsi_device*) ;

__attribute__((used)) static enum zfcp_erp_act_result zfcp_erp_strategy_check_lun(
 struct scsi_device *sdev, enum zfcp_erp_act_result result)
{
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(sdev);

 switch (result) {
 case 128 :
  atomic_set(&zfcp_sdev->erp_counter, 0);
  zfcp_erp_lun_unblock(sdev);
  break;
 case 130 :
  atomic_inc(&zfcp_sdev->erp_counter);
  if (atomic_read(&zfcp_sdev->erp_counter) > ZFCP_MAX_ERPS) {
   dev_err(&zfcp_sdev->port->adapter->ccw_device->dev,
    "ERP failed for LUN 0x%016Lx on "
    "port 0x%016Lx\n",
    (unsigned long long)zfcp_scsi_dev_lun(sdev),
    (unsigned long long)zfcp_sdev->port->wwpn);
   zfcp_erp_set_lun_status(sdev,
      ZFCP_STATUS_COMMON_ERP_FAILED);
  }
  break;
 case 133:
 case 131:
 case 132:
 case 129:

  break;
 }

 if (atomic_read(&zfcp_sdev->status) & ZFCP_STATUS_COMMON_ERP_FAILED) {
  zfcp_erp_lun_block(sdev, 0);
  result = 131;
 }
 return result;
}
