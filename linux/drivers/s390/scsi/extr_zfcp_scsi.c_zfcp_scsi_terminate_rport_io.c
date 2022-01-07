
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int dev; } ;
struct zfcp_adapter {int dummy; } ;
struct fc_rport {int port_id; int port_name; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;


 int put_device (int *) ;
 struct Scsi_Host* rport_to_shost (struct fc_rport*) ;
 int zfcp_erp_port_forced_no_port_dbf (char*,struct zfcp_adapter*,int ,int ) ;
 int zfcp_erp_port_forced_reopen (struct zfcp_port*,int ,char*) ;
 struct zfcp_port* zfcp_get_port_by_wwpn (struct zfcp_adapter*,int ) ;

__attribute__((used)) static void zfcp_scsi_terminate_rport_io(struct fc_rport *rport)
{
 struct zfcp_port *port;
 struct Scsi_Host *shost = rport_to_shost(rport);
 struct zfcp_adapter *adapter =
  (struct zfcp_adapter *)shost->hostdata[0];

 port = zfcp_get_port_by_wwpn(adapter, rport->port_name);

 if (port) {
  zfcp_erp_port_forced_reopen(port, 0, "sctrpi1");
  put_device(&port->dev);
 } else {
  zfcp_erp_port_forced_no_port_dbf(
   "sctrpin", adapter,
   rport->port_name ,
   rport->port_id );
 }
}
