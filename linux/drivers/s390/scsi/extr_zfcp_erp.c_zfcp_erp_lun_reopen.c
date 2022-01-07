
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_scsi_dev {struct zfcp_port* port; } ;
struct zfcp_port {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int erp_lock; } ;
struct scsi_device {int dummy; } ;


 int _zfcp_erp_lun_reopen (struct scsi_device*,int,char*,int ) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void zfcp_erp_lun_reopen(struct scsi_device *sdev, int clear, char *dbftag)
{
 unsigned long flags;
 struct zfcp_scsi_dev *zfcp_sdev = sdev_to_zfcp(sdev);
 struct zfcp_port *port = zfcp_sdev->port;
 struct zfcp_adapter *adapter = port->adapter;

 write_lock_irqsave(&adapter->erp_lock, flags);
 _zfcp_erp_lun_reopen(sdev, clear, dbftag, 0);
 write_unlock_irqrestore(&adapter->erp_lock, flags);
}
