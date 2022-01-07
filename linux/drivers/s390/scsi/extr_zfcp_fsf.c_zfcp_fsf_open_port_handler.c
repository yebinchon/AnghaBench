
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct zfcp_port {int dev; int status; int handle; scalar_t__ wwpn; } ;
struct zfcp_fsf_req {int status; TYPE_6__* qtcb; TYPE_2__* adapter; struct zfcp_port* data; } ;
struct TYPE_9__ {int * word; } ;
struct fsf_qtcb_header {int fsf_status; int port_handle; TYPE_3__ fsf_status_qual; } ;
struct fc_els_flogi {int dummy; } ;
struct TYPE_10__ {int els1_length; scalar_t__ els; } ;
struct TYPE_11__ {TYPE_4__ support; } ;
struct TYPE_12__ {TYPE_5__ bottom; struct fsf_qtcb_header header; } ;
struct TYPE_8__ {TYPE_1__* ccw_device; } ;
struct TYPE_7__ {int dev; } ;





 int FSF_PLOGI_MIN_LEN ;





 int ZFCP_STATUS_COMMON_ACCESS_BOXED ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int ZFCP_STATUS_PORT_PHYS_OPEN ;
 int atomic_andnot (int ,int *) ;
 int atomic_or (int,int *) ;
 int dev_warn (int *,char*,unsigned long long) ;
 int put_device (int *) ;
 int zfcp_erp_set_port_status (struct zfcp_port*,int ) ;
 int zfcp_fc_plogi_evaluate (struct zfcp_port*,struct fc_els_flogi*) ;

__attribute__((used)) static void zfcp_fsf_open_port_handler(struct zfcp_fsf_req *req)
{
 struct zfcp_port *port = req->data;
 struct fsf_qtcb_header *header = &req->qtcb->header;
 struct fc_els_flogi *plogi;

 if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
  goto out;

 switch (header->fsf_status) {
 case 132:
  break;
 case 133:
  dev_warn(&req->adapter->ccw_device->dev,
    "Not enough FCP adapter resources to open "
    "remote port 0x%016Lx\n",
    (unsigned long long)port->wwpn);
  zfcp_erp_set_port_status(port,
      ZFCP_STATUS_COMMON_ERP_FAILED);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 135:
  switch (header->fsf_status_qual.word[0]) {
  case 131:


  case 129:
  case 130:
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
   break;
  }
  break;
 case 134:
  port->handle = header->port_handle;
  atomic_or(ZFCP_STATUS_COMMON_OPEN |
    ZFCP_STATUS_PORT_PHYS_OPEN, &port->status);
  atomic_andnot(ZFCP_STATUS_COMMON_ACCESS_BOXED,
                    &port->status);
  plogi = (struct fc_els_flogi *) req->qtcb->bottom.support.els;
  if (req->qtcb->bottom.support.els1_length >=
      FSF_PLOGI_MIN_LEN)
    zfcp_fc_plogi_evaluate(port, plogi);
  break;
 case 128:
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 }

out:
 put_device(&port->dev);
}
