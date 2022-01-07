
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int zfcp_erp_clear_lun_status (struct scsi_device*,int) ;

__attribute__((used)) static void zfcp_erp_lun_block(struct scsi_device *sdev, int clear_mask)
{
 zfcp_erp_clear_lun_status(sdev,
      ZFCP_STATUS_COMMON_UNBLOCKED | clear_mask);
}
