
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int zfcp_erp_lun_reopen (struct scsi_device*,int,char*) ;

void zfcp_erp_lun_shutdown(struct scsi_device *sdev, int clear, char *dbftag)
{
 int flags = ZFCP_STATUS_COMMON_RUNNING | ZFCP_STATUS_COMMON_ERP_FAILED;
 zfcp_erp_lun_reopen(sdev, clear | flags, dbftag);
}
