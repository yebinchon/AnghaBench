
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_fsf_req {int status; TYPE_2__* qtcb; struct zfcp_fc_wka_port* data; } ;
struct zfcp_fc_wka_port {int completion_wq; int status; int adapter; } ;
struct TYPE_3__ {scalar_t__ fsf_status; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 scalar_t__ FSF_PORT_HANDLE_NOT_VALID ;
 int ZFCP_FC_WKA_PORT_OFFLINE ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int wake_up (int *) ;
 int zfcp_erp_adapter_reopen (int ,int ,char*) ;

__attribute__((used)) static void zfcp_fsf_close_wka_port_handler(struct zfcp_fsf_req *req)
{
 struct zfcp_fc_wka_port *wka_port = req->data;

 if (req->qtcb->header.fsf_status == FSF_PORT_HANDLE_NOT_VALID) {
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  zfcp_erp_adapter_reopen(wka_port->adapter, 0, "fscwph1");
 }

 wka_port->status = ZFCP_FC_WKA_PORT_OFFLINE;
 wake_up(&wka_port->completion_wq);
}
