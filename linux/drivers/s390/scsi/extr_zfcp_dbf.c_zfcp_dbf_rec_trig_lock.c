
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zfcp_port {int dummy; } ;
struct zfcp_adapter {int erp_lock; } ;
struct scsi_device {int dummy; } ;


 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_dbf_rec_trig (char*,struct zfcp_adapter*,struct zfcp_port*,struct scsi_device*,int ,int ) ;

void zfcp_dbf_rec_trig_lock(char *tag, struct zfcp_adapter *adapter,
       struct zfcp_port *port, struct scsi_device *sdev,
       u8 want, u8 need)
{
 unsigned long flags;

 read_lock_irqsave(&adapter->erp_lock, flags);
 zfcp_dbf_rec_trig(tag, adapter, port, sdev, want, need);
 read_unlock_irqrestore(&adapter->erp_lock, flags);
}
