
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_port {scalar_t__ wwpn; int dev; int status; scalar_t__ wwnn; } ;
struct TYPE_6__ {scalar_t__ status; struct zfcp_port* port; } ;
struct fc_els_adisc {int adisc_wwpn; int adisc_wwnn; } ;
struct TYPE_4__ {struct fc_els_adisc rsp; } ;
struct TYPE_5__ {TYPE_1__ adisc; } ;
struct zfcp_fc_req {TYPE_3__ ct_els; TYPE_2__ u; } ;


 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_PORT_LINK_TEST ;
 int atomic_andnot (int ,int *) ;
 int atomic_read (int *) ;
 scalar_t__ be64_to_cpu (int ) ;
 int kmem_cache_free (int ,struct zfcp_fc_req*) ;
 int put_device (int *) ;
 int zfcp_erp_port_forced_reopen (struct zfcp_port*,int ,char*) ;
 int zfcp_erp_port_reopen (struct zfcp_port*,int ,char*) ;
 int zfcp_fc_req_cache ;
 int zfcp_scsi_schedule_rport_register (struct zfcp_port*) ;

__attribute__((used)) static void zfcp_fc_adisc_handler(void *data)
{
 struct zfcp_fc_req *fc_req = data;
 struct zfcp_port *port = fc_req->ct_els.port;
 struct fc_els_adisc *adisc_resp = &fc_req->u.adisc.rsp;

 if (fc_req->ct_els.status) {

  zfcp_erp_port_forced_reopen(port, ZFCP_STATUS_COMMON_ERP_FAILED,
         "fcadh_1");
  goto out;
 }

 if (!port->wwnn)
  port->wwnn = be64_to_cpu(adisc_resp->adisc_wwnn);

 if ((port->wwpn != be64_to_cpu(adisc_resp->adisc_wwpn)) ||
     !(atomic_read(&port->status) & ZFCP_STATUS_COMMON_OPEN)) {
  zfcp_erp_port_reopen(port, ZFCP_STATUS_COMMON_ERP_FAILED,
         "fcadh_2");
  goto out;
 }


 zfcp_scsi_schedule_rport_register(port);
 out:
 atomic_andnot(ZFCP_STATUS_PORT_LINK_TEST, &port->status);
 put_device(&port->dev);
 kmem_cache_free(zfcp_fc_req_cache, fc_req);
}
