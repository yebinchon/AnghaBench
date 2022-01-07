
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct zfcp_unit {struct zfcp_port* port; int fcp_lun; } ;
struct zfcp_port {int starget_id; TYPE_1__* adapter; } ;
struct scsi_lun {int dummy; } ;
struct scsi_device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* scsi_host; } ;


 struct scsi_device* scsi_device_lookup (struct Scsi_Host*,int ,int ,int ) ;
 int scsilun_to_int (struct scsi_lun*) ;

struct scsi_device *zfcp_unit_sdev(struct zfcp_unit *unit)
{
 struct Scsi_Host *shost;
 struct zfcp_port *port;
 u64 lun;

 lun = scsilun_to_int((struct scsi_lun *) &unit->fcp_lun);
 port = unit->port;
 shost = port->adapter->scsi_host;
 return scsi_device_lookup(shost, 0, port->starget_id, lun);
}
