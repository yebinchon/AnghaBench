
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {struct fc_rport* rport; int adapter; } ;
struct fc_rport {int dummy; } ;


 int ZFCP_PSEUDO_ERP_ACTION_RPORT_DEL ;
 int fc_remote_port_delete (struct fc_rport*) ;
 int zfcp_dbf_rec_trig_lock (char*,int ,struct zfcp_port*,int *,int ,int ) ;

__attribute__((used)) static void zfcp_scsi_rport_block(struct zfcp_port *port)
{
 struct fc_rport *rport = port->rport;

 if (rport) {
  zfcp_dbf_rec_trig_lock("scpdely", port->adapter, port, ((void*)0),
           ZFCP_PSEUDO_ERP_ACTION_RPORT_DEL,
           ZFCP_PSEUDO_ERP_ACTION_RPORT_DEL);
  fc_remote_port_delete(rport);
  port->rport = ((void*)0);
 }
}
