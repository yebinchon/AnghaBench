
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_port {int adapter; } ;
struct zfcp_fsf_req {int status; TYPE_2__* qtcb; struct zfcp_port* data; } ;
struct TYPE_3__ {int fsf_status; } ;
struct TYPE_4__ {TYPE_1__ header; } ;





 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int zfcp_erp_adapter_reopen (int ,int ,char*) ;
 int zfcp_erp_clear_port_status (struct zfcp_port*,int ) ;

__attribute__((used)) static void zfcp_fsf_close_port_handler(struct zfcp_fsf_req *req)
{
 struct zfcp_port *port = req->data;

 if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
  return;

 switch (req->qtcb->header.fsf_status) {
 case 128:
  zfcp_erp_adapter_reopen(port->adapter, 0, "fscph_1");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 130:
  break;
 case 129:
  zfcp_erp_clear_port_status(port, ZFCP_STATUS_COMMON_OPEN);
  break;
 }
}
