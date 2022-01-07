
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct zfcp_port {int dev; int d_id; } ;
struct zfcp_fsf_ct_els {int handler; } ;
struct zfcp_adapter {int dummy; } ;
struct fc_rport {int port_name; } ;
struct TYPE_3__ {int port_id; } ;
struct TYPE_4__ {TYPE_1__ h_els; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct bsg_job {int timeout; struct fc_bsg_request* request; struct zfcp_fsf_ct_els* dd_data; } ;


 int EINVAL ;
 int HZ ;
 struct fc_rport* fc_bsg_to_rport (struct bsg_job*) ;
 int ntoh24 (int ) ;
 int put_device (int *) ;
 int zfcp_fc_ct_els_job_handler ;
 int zfcp_fsf_send_els (struct zfcp_adapter*,int ,struct zfcp_fsf_ct_els*,int) ;
 struct zfcp_port* zfcp_get_port_by_wwpn (struct zfcp_adapter*,int ) ;

__attribute__((used)) static int zfcp_fc_exec_els_job(struct bsg_job *job,
    struct zfcp_adapter *adapter)
{
 struct zfcp_fsf_ct_els *els = job->dd_data;
 struct fc_rport *rport = fc_bsg_to_rport(job);
 struct fc_bsg_request *bsg_request = job->request;
 struct zfcp_port *port;
 u32 d_id;

 if (rport) {
  port = zfcp_get_port_by_wwpn(adapter, rport->port_name);
  if (!port)
   return -EINVAL;

  d_id = port->d_id;
  put_device(&port->dev);
 } else
  d_id = ntoh24(bsg_request->rqst_data.h_els.port_id);

 els->handler = zfcp_fc_ct_els_job_handler;
 return zfcp_fsf_send_els(adapter, d_id, els, job->timeout / HZ);
}
