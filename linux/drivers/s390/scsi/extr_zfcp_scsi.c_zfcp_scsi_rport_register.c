
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_port {int starget_id; struct fc_rport* rport; int supported_classes; int maxframe_size; scalar_t__ wwpn; TYPE_2__* adapter; int d_id; int wwnn; } ;
struct fc_rport_identifiers {int roles; int port_id; scalar_t__ port_name; int node_name; } ;
struct fc_rport {int scsi_target_id; int supported_classes; int maxframe_size; } ;
struct TYPE_4__ {TYPE_1__* ccw_device; int scsi_host; } ;
struct TYPE_3__ {int dev; } ;


 int FC_RPORT_ROLE_FCP_TARGET ;
 int ZFCP_PSEUDO_ERP_ACTION_RPORT_ADD ;
 int dev_err (int *,char*,unsigned long long) ;
 struct fc_rport* fc_remote_port_add (int ,int ,struct fc_rport_identifiers*) ;
 int zfcp_dbf_rec_trig_lock (char*,TYPE_2__*,struct zfcp_port*,int *,int ,int ) ;
 int zfcp_unit_queue_scsi_scan (struct zfcp_port*) ;

__attribute__((used)) static void zfcp_scsi_rport_register(struct zfcp_port *port)
{
 struct fc_rport_identifiers ids;
 struct fc_rport *rport;

 if (port->rport)
  return;

 ids.node_name = port->wwnn;
 ids.port_name = port->wwpn;
 ids.port_id = port->d_id;
 ids.roles = FC_RPORT_ROLE_FCP_TARGET;

 zfcp_dbf_rec_trig_lock("scpaddy", port->adapter, port, ((void*)0),
          ZFCP_PSEUDO_ERP_ACTION_RPORT_ADD,
          ZFCP_PSEUDO_ERP_ACTION_RPORT_ADD);
 rport = fc_remote_port_add(port->adapter->scsi_host, 0, &ids);
 if (!rport) {
  dev_err(&port->adapter->ccw_device->dev,
   "Registering port 0x%016Lx failed\n",
   (unsigned long long)port->wwpn);
  return;
 }

 rport->maxframe_size = port->maxframe_size;
 rport->supported_classes = port->supported_classes;
 port->rport = rport;
 port->starget_id = rport->scsi_target_id;

 zfcp_unit_queue_scsi_scan(port);
}
