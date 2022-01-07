
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_port {int d_id; int wwpn; int status; } ;
struct zfcp_dbf_rec {int lun; void* lun_status; int d_id; int wwpn; void* port_status; void* adapter_status; } ;
struct zfcp_adapter {int status; } ;
struct scsi_device {int dummy; } ;
struct TYPE_2__ {int status; } ;


 int ZFCP_DBF_INVALID_LUN ;
 void* atomic_read (int *) ;
 TYPE_1__* sdev_to_zfcp (struct scsi_device*) ;
 int zfcp_scsi_dev_lun (struct scsi_device*) ;

__attribute__((used)) static void zfcp_dbf_set_common(struct zfcp_dbf_rec *rec,
    struct zfcp_adapter *adapter,
    struct zfcp_port *port,
    struct scsi_device *sdev)
{
 rec->adapter_status = atomic_read(&adapter->status);
 if (port) {
  rec->port_status = atomic_read(&port->status);
  rec->wwpn = port->wwpn;
  rec->d_id = port->d_id;
 }
 if (sdev) {
  rec->lun_status = atomic_read(&sdev_to_zfcp(sdev)->status);
  rec->lun = zfcp_scsi_dev_lun(sdev);
 } else
  rec->lun = ZFCP_DBF_INVALID_LUN;
}
