
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_scsi_dev {struct zfcp_port* port; } ;
struct zfcp_port {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int erp_lock; } ;
struct scsi_device {int dummy; } ;


 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int ZFCP_STATUS_ERP_NO_REF ;
 int _zfcp_erp_lun_reopen (struct scsi_device*,int,char*,int ) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_erp_wait (struct zfcp_adapter*) ;

void zfcp_erp_lun_shutdown_wait(struct scsi_device *sdev, char *dbftag)
{
 unsigned long flags;
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(sdev);
 struct zfcp_port *port = zfcp_sdev->port;
 struct zfcp_adapter *adapter = port->adapter;
 int clear = ZFCP_STATUS_COMMON_RUNNING | ZFCP_STATUS_COMMON_ERP_FAILED;

 write_lock_irqsave(&adapter->erp_lock, flags);
 _zfcp_erp_lun_reopen(sdev, clear, dbftag, ZFCP_STATUS_ERP_NO_REF);
 write_unlock_irqrestore(&adapter->erp_lock, flags);

 zfcp_erp_wait(adapter);
}
